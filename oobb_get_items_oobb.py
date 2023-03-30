from oobb_get_items_base import *
import oobb_base as ob


def get_bp(**kwargs):
    thing = ob.get_default_thing(**kwargs)

    shaft = kwargs.get("shaft", "m6")
    radius_name = kwargs.get("radius_name", "m6")
    width = kwargs.get("width", "")
    height = kwargs.get("height", "")
    thickness = kwargs.get("thickness", "")
    bearing_type = kwargs.get("bearing_type", "608")
    overwrite = kwargs.get("overwrite", False)

    # solid piece
    th = thing["components"]
    th.append(ob.oe(t="p", s="oobb_plate", width=width, height=height,
              depth_mm=thickness, pos=[0, 0, -thickness/2], holes=False, mode="all"))
    # for 6804 laser make plate bigger
    if bearing_type == "6804":
        pass
        th.append(ob.oe(t="p", s="oobb_plate", width=width+0.25, height=height+0.25,
                  depth_mm=thickness, pos=[0, 0, -thickness/2], holes=False, mode="laser", inclusion="laser"))

    # bearing
    th.extend(ob.oobb_easy(t="n", s="oobb_bearing", bearing_type=bearing_type, pos=[
              0, 0, 0], mode="all", overwrite=overwrite, m=""))

    # adding corner holes
    # hole_positions = [1,1],[1,height],[width,1],[width,height]
    # for pos in hole_positions:
    #    x,y = ob.get_hole_pos(pos[0],pos[1],width,height)
    #    th.extend(ob.oobb_easy(t="n",s="oobb_hole", pos=[x,y,0], radius_name="m6", overwrite=overwrite, m=""))
    # adding perimieter miss middle holes
    holes = "perimeter_miss_middle"
    if bearing_type == "6810":
        holes = ["top", "bottom"]
        th.extend(ob.oobb_easy(t="n", s="oobb_holes", pos=[
                  0, 0, 0], width=5, height=5, holes="corners", m="", radius_name=radius_name))

    th.extend(ob.oobb_easy(t="n", s="oobb_holes", pos=[
              0, 0, 0], width=width, height=height, holes=holes, m="", radius_name=radius_name))

    # adding middle holes
    wid = ob.gv(f'bearing_{bearing_type}_inner_holes_true')
    th.extend(ob.oobb_easy(t="n", s="oobb_holes", pos=[
              0, 0, 0], width=wid, height=wid, holes="circle", middle=False, circle_dif=5, m="", radius_name=radius_name))

    # middle hole type
    if shaft == "m6":
        th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[
                  0, 0, 0], radius_name=radius_name, width=width, height=height, m="", holes="just_middle"))
    elif shaft == "motor_gearmotor_01":
        th.extend(ob.oobb_easy(t="n", s="oobb_motor_gearmotor_01",
                  part="shaft", pos=[0, 0, 0], m=""))
        joint_dis = 15
        hole_positions_mm = [joint_dis/2, 0], [-joint_dis/2, 0]
        # captive nut replaced with a insert
        for pos in hole_positions_mm:
            x, y = pos
            z = -thickness/2
            # th.extend(ob.oobb_easy(t="n",s="oobb_nut", radius_name="m3", depth=0, pos=[x,y,z], m="", rotZ=360/12))

    # adding middle slot
    # th.extend(ob.oobb_easy(t="n",s="oobb_slot", pos=[0,0,0], radius_name="m3", w=10, m=""))
    hole_dist = 15
    th.extend(ob.oobb_easy(t="n", s="oobb_hole",
              radius_name="m3", pos=[hole_dist/2, 0, 0], m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole",
              radius_name="m3", pos=[-hole_dist/2, 0, 0], m=""))

    # adding connecting screws
    mid_w = (width - 1) / 2 + 1
    mid_h = (height - 1) / 2 + 1
    adja = 0 / ob.gv("osp")
    adjb = 0
    adjc = 0
    if bearing_type == "6803":
        adja = 2 / ob.gv("osp")
    elif bearing_type == "6804" or bearing_type == "6704":
        adja = 3 / ob.gv("osp")
    elif bearing_type == "6810":
        adjb = 22 / ob.gv("osp")
        adjc = 1
    # hole_positions = [1-adj,mid_h],[mid_w,height+adj],[mid_w,1-adj],[width+adj,mid_h]

    hole_positions = [1-adja+adjc, mid_h+adjb], [width+adja-adjc,
                                                 mid_h-adjb], [mid_w-adjb, 1-adja], [mid_w+adjb, height+adja]
    rot_current = 0
    rotz_current = 360/12
    times_through = 0
    for pos in hole_positions:
        x, y = ob.get_hole_pos(pos[0], pos[1], width, height)
        z = thickness/2
        th.extend(ob.oobb_easy(t="n", s="oobb_countersunk", sandwich=True, radius_name="m3",
                  depth=thickness, pos=[x, y, z], m="", rotY=rot_current, rotZ=rotz_current))
        if rot_current == 0:
            rot_current = 180
        else:
            rot_current = 0
        # doing nut twist on the outside ones
        if times_through == 1 or times_through == 2:
            rotz_current = 0
        else:
            rotz_current = 360/12
        times_through += 1

    # middle holes
    joint_dis = 15
    joint_dis_laser = 13

    hole_positions_mm = [[0, joint_dis/2, z, "all", "oobb_countersunk",
                          0], [0, -joint_dis/2, z, "all", "oobb_countersunk", 180]]
    # add the inset connecting standoffs needed for 6704 and 6804 20mm id to laser only
    if bearing_type == "6704" or bearing_type == "6804":
        if shaft == "motor_gearmotor_01":
            hole_positions_mm = [[0, joint_dis/2, z, ["true", "3dpr"], "oobb_countersunk", 0], [0, -joint_dis/2, z, ["true", "3dpr"], "oobb_countersunk", 180], [
                0, joint_dis_laser/2, z, ["laser"], "oobb_countersunk", 0], [0, -joint_dis_laser/2, z, ["laser"], "oobb_countersunk", 180]]
        else:
            hole_positions_mm = [[0, joint_dis/2, z, ["true", "3dpr"], "oobb_countersunk", 0], [0, -joint_dis/2, z, ["true", "3dpr"], "oobb_countersunk", 180], [
                0, joint_dis_laser/2, z, ["laser"], "oobb_countersunk", 0], [0, -joint_dis_laser/2, z, ["laser"], "oobb_countersunk", 0]]
    # add head insets 180 to keep them out of the 3dpr one currently and 0 for laser one so both are in the bottom, need to double slice 3dpr one to get it working properly
    if shaft == "motor_gearmotor_01":
        hole_positions_mm.append(
            [joint_dis/2, 0, z, ["all"], "oobb_threaded_insert", 0])
        hole_positions_mm.append(
            [-joint_dis/2, 0, z, ["all"], "oobb_threaded_insert", 0])
    else:
        hole_positions_mm.append(
            [joint_dis/2, 0, z, ["all"], "oobb_threaded_insert", 180])
        hole_positions_mm.append(
            [-joint_dis/2, 0, z, ["all"], "oobb_threaded_insert", 180])

    for pos in hole_positions_mm:
        x, y, z, mode, type, rotY = pos
        # z = thickness/2

        th.extend(ob.oobb_easy(t="n", s=type, sandwich=True, radius_name="m3",
                  hole=True, depth=thickness, pos=[x, y, z], m="", rotY=rotY, mode=mode))

    # halfing it if 3dpr
    inclusion = "3dpr"
    th.append(ob.oobb_easy(t="n", s="cube", size=[
              500, 500, 500], pos=[-500/2, -500/2, 0], inclusion=inclusion, m=""))

    return thing


def get_bp_shim(**kwargs):
    # this is a shim for the bearing plate
    bearing_type = kwargs.get("bearing_type", "6803")
    thickness = kwargs.get("thickness", 3)

    thing = ob.get_default_thing(**kwargs)
    th = thing["components"]

    th.extend(ob.oobb_easy(t="p", s="oobb_cylinder",
              radius_name=f'bearing_{bearing_type}_od_catch', depth_mm=thickness, pos=[0, 0, 0]))
    th.extend(ob.oobb_easy(t="n", s="oobb_cylinder",
              radius_name=f'bearing_{bearing_type}_id', depth_mm=thickness, pos=[0, 0, 0]))

    return thing


def get_ci(**kwargs):

    diameter = kwargs.get("diameter", 1)
    thickness = kwargs.get("thickness", 3)
    holes = kwargs.get("holes", True)

    thing = ob.get_default_thing(**kwargs)
    th = thing["components"]

    th.extend(ob.oobb_easy(t="p", s="oobb_circle",
              diameter=diameter, depth_mm=thickness, pos=[0, 0, 0]))
    # find the start point needs to be half the width_mm plus half ob.gv("osp")
    if holes:
        th.extend(ob.oobb_easy(t="n", s="oobb_holes", circle_dif=13,
                  width=diameter, height=diameter, holes="circle", m=""))
        if diameter == 3:
            # add 45 degree rotated ones but do the math
            a = 10.607
            positions = [a, a, 0], [a, -a, 0], [-a, a, 0], [-a, -a, 0]
            for pos in positions:
                th.extend(ob.oobb_easy(t="n", s="oobb_hole",
                          radius_name="m6", pos=pos, m=""))
        # add m3 holes
        a = 7.5
        positions = [0, a, 0], [0, -a, 0], [a, 0, 0], [-a, 0, 0]
        for pos in positions:
            th.extend(ob.oobb_easy(t="n", s="oobb_hole",
                      radius_name="m3", pos=pos, m=""))
    return thing


def get_hl(**kwargs):
    extra = kwargs.get("extra")
    kwargs.pop("extra")
    kwargs["type"] = f'hl_{extra}'
    if extra != "":
        # Get the module object for the current file
        current_module = __import__(__name__)
        function_name = "get_hl_" + extra
        # Call the function using the string variable
        function_to_call = getattr(current_module, function_name)
        return function_to_call(**kwargs)
    else:
        Exception("No extra")


def get_hl_motor_gearmotor_01(**kwargs):

    thing = ob.get_default_thing(**kwargs)

    width = kwargs.get("width", 10)
    height = kwargs.get("height", 10)
    thickness = kwargs.get("thickness", 3)

    th = thing["components"]

    plate_pos = [-ob.gv("osp")/2, 0, 0]

    th.extend(ob.oe(t="p", s="oobb_pl", holes=False, width=width,
              height=height, depth_mm=thickness, pos=plate_pos, mode="all"))
    holes = [[1, 1, "m6"], [2, 1, "m6"], [4, 1, "m6"], [1, 3, "m6"], [2, 3, "m6"], [
        4, 3, "m6"], [3, 1-3/ob.gv("osp"), "m3"], [3, 3+3/ob.gv("osp"), "m3"], [4, 2, "m3"]]
    for hole in holes:
        loc = hole
        th.extend(ob.oobb_easy(t="n", s="oobb_holes", width=width, loc=loc,
                  height=height, holes="single", radius_name=hole[2], pos=plate_pos, m=""))

    # add bearing size hole

    th.extend(ob.oobb_easy(t="n", s="oobb_hole",
              radius_name=f'bearing_6704_od_catch', m=""))

    th.extend(ob.oobb_easy(t="n", s="oobb_motor_gearmotor_01", width=width,
              loc=loc, height=height, holes="single", pos=[0, 0, 0], m=""))

    return thing


def get_ja(**kwargs):
    thing = ob.get_default_thing(**kwargs)

    width = kwargs.get("width", 2)
    height = kwargs.get("height", 2)
    thickness = kwargs.get("thickness", 3)

    # solid piece
    th = thing["components"]

    height_cube = 13.5
    y_plate = height_cube + (height-1)*ob.gv("osp")/2

    th.extend(ob.oe(t="p", s="oobb_pl", width=width, height=height,
              depth_mm=thickness, pos=[0, y_plate, -thickness/2], mode="all"))

    width_cube = ob.gv("osp")*width-ob.gv("osp_minus")

    th.append(ob.oobb_easy(t="p", s="cube", size=[
              width_cube, height_cube, thickness], pos=[-width_cube/2, 0, -thickness/2], mode="all"))

    # bolt holes
    mode = "all"
    for x in range(0, width):
        x = (-width/2*ob.gv("osp")+ob.gv("osp")/2)+x*ob.gv("osp")
        y = height_cube
        z = 0

        th.extend(ob.oobb_easy(t="n", s="oobb_hole", radius_name="m6",
                  depth=height_cube, pos=[x, y, z], rotX=90, mode=mode, m=""))

        # nut height
        y = 9
        th.extend(ob.oobb_easy(t="n", s="oobb_nut_loose", radius_name="m6",
                  depth=height_cube, pos=[x, y, z], rotX=90, mode=mode, m=""))

    rot_current = 0
    for x in range(0, width-1):
        x = (-width/2*ob.gv("osp")+ob.gv("osp"))+x*ob.gv("osp")
        y = height_cube
        z = thickness/2

        th.extend(ob.oobb_easy(t="n", s="oobb_countersunk", radius_name="m3", depth=thickness, pos=[
                  x, y, z], mode=mode, sandwich=True, m="", rotY=rot_current, include_nut=True))
        rot_current = rot_current + 180

    # halfing it if 3dpr
    inclusion = "3dpr"
    th.append(ob.oobb_easy(t="n", s="cube", size=[
              500, 500, 500], pos=[-500/2, -500/2, 0], inclusion=inclusion, m=""))

    return thing


def get_jab(**kwargs):
    thing = ob.get_default_thing(**kwargs)

    width = kwargs.get("width", 2)
    height = kwargs.get("height", 2)
    thickness = kwargs.get("thickness", 3)

    # solid piece
    th = thing["components"]

    height_cube = 13.5
    y_plate = height_cube + (height-1)*ob.gv("osp")/2

    th.extend(ob.oe(t="p", s="oobb_pl", width=width, height=height,
              depth_mm=thickness, pos=[0, y_plate, -thickness/2], mode="all"))

    width_cube = ob.gv("osp")*width-ob.gv("osp_minus")

    th.append(ob.oobb_easy(t="p", s="cube", size=[
              width_cube, height_cube, thickness], pos=[-width_cube/2, 0, -thickness/2], mode="all"))

    # bolt holes
    mode = "all"
    for x in range(0, width):
        x = (-width/2*ob.gv("osp")+ob.gv("osp")/2)+x*ob.gv("osp")
        y = height_cube
        z = 0

        th.extend(ob.oobb_easy(t="n", s="oobb_hole", radius_name="m6",
                  depth=height_cube, pos=[x, y, z], rotX=90, mode=mode, m=""))

        # nut height
        y = 9
        th.extend(ob.oobb_easy(t="n", s="oobb_nut_through", radius_name="m6",
                  depth=height_cube, pos=[x, y, z], rotX=90, mode=mode, m=""))

# add m3 countersunk joining screws
    rot_current = 0
    for x in range(0, width-1):
        x = (-width/2*ob.gv("osp")+ob.gv("osp"))+x*ob.gv("osp")
        y = height_cube
        z = thickness/2

        th.extend(ob.oobb_easy(t="n", s="oobb_countersunk", radius_name="m3", depth=thickness, pos=[
                  x, y, z], mode="laser", rotZ=360/12, sandwich=True, m="", rotY=rot_current))
        rot_current = rot_current + 180

    return thing


def get_mp(**kwargs):
    thing = ob.get_default_thing(**kwargs)

    width = kwargs.get("width", 2)
    height = kwargs.get("height", 2)
    depth = kwargs.get("depth", 3)
    width_mounting = kwargs.get("width_mounting", 10)
    height_mounting = kwargs.get("height_mounting", 10)
    radius_hole = kwargs.get("radius_hole", "m3")

    th = thing["components"]
    th.append(ob.oobb_easy(t="p", s="oobb_plate", width=width,
              height=height, depth_mm=depth, pos=[0, 0, 0]))
    th.extend(ob.oobb_easy(t="n", s="oobb_holes", width=width, height=height, pos=[
              0, 0, 0], holes="perimeter", radius_name=radius_hole))
    # add mounting holes
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[
              width_mounting/2, height_mounting/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole",
              pos=[-width_mounting/2, height_mounting/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[
              width_mounting/2, -height_mounting/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole",
              pos=[-width_mounting/2, -height_mounting/2, 0], radius_name=radius_hole, m=""))

    return thing


def get_mps(**kwargs):
    thing = ob.get_default_thing(**kwargs)

    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    thickness = kwargs.get("thickness", 3)
    width_mounting = kwargs.get("width_mounting", 10)
    height_mounting = kwargs.get("height_mounting", 10)
    radius_hole = kwargs.get("radius_hole", "m3")
    overwrite = kwargs.get("overwrite", True)

    th = thing["components"]
    th.append(ob.oobb_easy(t="p", s="oobb_plate", width=width,
              height=height, depth_mm=thickness, pos=[0, 0, 0]))
    th.extend(ob.oobb_easy(t="n", s="oobb_holes", width=width, height=height, pos=[
              0, 0, 0], holes="top", radius_name=radius_hole))
    # add mounting holes
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[
              width_mounting/2+ob.gv("osp")/2, height_mounting/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[-width_mounting/2+ob.gv(
        "osp")/2, height_mounting/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[
              width_mounting/2+ob.gv("osp")/2, -height_mounting/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[-width_mounting/2+ob.gv(
        "osp")/2, -height_mounting/2, 0], radius_name=radius_hole, m=""))

    return thing


def get_mpt(**kwargs):
    thing = ob.get_default_thing(**kwargs)

    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    thickness = kwargs.get("thickness", 3)
    width_mounting = kwargs.get("width_mounting", 10)
    height_mounting = kwargs.get("height_mounting", 10)
    radius_hole = kwargs.get("radius_hole", "m3")
    overwrite = kwargs.get("overwrite", True)

    th = thing["components"]
    th.append(ob.oobb_easy(t="p", s="oobb_plate", width=width,
              height=height, depth_mm=thickness, pos=[0, 0, 0]))
    th.extend(ob.oobb_easy(t="n", s="oobb_holes", width=width, height=height, pos=[
              0, 0, 0], holes="top", radius_name=radius_hole))
    th.extend(ob.oobb_easy(t="n", s="oobb_holes", width=width, height=height, pos=[
              0, 0, 0], holes="bottom", radius_name=radius_hole))
    # add mounting holes
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[
              width_mounting/2, height_mounting/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole",
              pos=[-width_mounting/2, height_mounting/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[
              width_mounting/2, -height_mounting/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole",
              pos=[-width_mounting/2, -height_mounting/2, 0], radius_name=radius_hole, m=""))

    return thing


def get_mpu(**kwargs):
    thing = ob.get_default_thing(**kwargs)

    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    depth = kwargs.get("depth", 3)
    width_mounting = kwargs.get("width_mounting", 10)
    height_mounting = kwargs.get("height_mounting", 10)
    radius_hole = kwargs.get("radius_hole", "m3")
    overwrite = kwargs.get("overwrite", True)

    th = thing["components"]
    th.append(ob.oobb_easy(t="p", s="oobb_plate", width=width,
              height=height, depth_mm=depth, pos=[0, 0, 0]))
    th.extend(ob.oobb_easy(t="n", s="oobb_holes", width=width,
              height=height, pos=[0, 0, 0], holes="u", radius_name=radius_hole))
    # add mounting holes
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[
              width_mounting/2, height_mounting/2+ob.gv("osp")/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole",
              pos=[-width_mounting/2, height_mounting/2+ob.gv("osp")/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[
              width_mounting/2, -height_mounting/2+ob.gv("osp")/2, 0], radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole",
              pos=[-width_mounting/2, -height_mounting/2+ob.gv("osp")/2, 0], radius_name=radius_hole, m=""))

    return thing


def get_pl(**kwargs):

    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    thickness = kwargs.get("thickness", 3)
    holes = kwargs.get("holes", True)

    thing = ob.get_default_thing(**kwargs)
    th = thing["components"]

    th.append(ob.oobb_easy(t="p", s="oobb_plate", width=width,
              height=height, depth_mm=thickness, pos=[0, 0, 0]))
    # find the start point needs to be half the width_mm plus half ob.gv("osp")
    if holes:
        th.extend(ob.oobb_easy(t="n", s="oobb_holes",
                  width=width, height=height))

    return thing


def get_sh(**kwargs):
    thing = ob.get_default_thing(**kwargs)

    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    thickness = kwargs.get("thickness", 3)
    radius_hole = kwargs.get("radius_hole", "m3")

    th = thing["components"]
    th.extend(ob.oobb_easy(t="p", s="oobb_cylinder",
              radius=14/2, depth=3, pos=[0, 0, 0]))
    th.extend(ob.oobb_easy(t="p", s="oobb_cylinder",
              radius_name="hole_radius_little_m6", depth=thickness+3, pos=[0, 0, 0]))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole",
              radius_name="m3", pos=[0, 0, 0]))

    return thing


def get_ztj(**kwargs):
    thickness = 12
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    thing = ob.get_default_thing(**kwargs)

    # solid piece
    th = thing["components"]

    height_cube = 13.5
    y_plate = height_cube + (height-1)*ob.gv("osp") / 2

    th.extend(ob.oe(t="p", s="oobb_pl", holes=False, width=width, height=height,
              depth_mm=thickness, pos=[0, y_plate, -thickness/2], mode="all"))

    width_cube = ob.gv("osp")*width-ob.gv("osp_minus")

    th.append(ob.oobb_easy(t="p", s="cube", size=[
              width_cube, height_cube, thickness], pos=[-width_cube/2, 0, -thickness/2], mode="all"))

    # bolt holes
    mode = "all"
    for x in range(0, width):
        x = (-width/2*ob.gv("osp")+ob.gv("osp")/2)+x*ob.gv("osp")
        y = height_cube
        z = 0
        for hei in range(0, height):
            pos_zt = [x, height_cube+1.5+ob.gv("osp")*hei, 0]
            th.extend(ob.oobb_easy(t="n", s="oobb_ziptie",
                      pos=pos_zt, mode=mode, m=""))

        x2 = x
        y2 = 8
        z2 = z
        th.extend(ob.oobb_easy(t="n", s="oobb_hole", radius_name="m6",
                  depth=y2, pos=[x2, y2, z2], rotX=90, mode=mode, m=""))

        # nut height
        y = 9
        th.extend(ob.oobb_easy(t="n", s="oobb_nut_through", radius_name="m6",
                  depth=height_cube, pos=[x, y, z], rotX=90, mode=mode, m=""))

    return thing


def get_zt(**kwargs):
    thickness = 6
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    thing = ob.get_default_thing(**kwargs)

    # solid piece
    th = thing["components"]

    height_cube = 13.5

    th.extend(ob.oe(t="p", s="oobb_pl", holes=False, width=width,
              height=height, depth_mm=thickness, pos=[0, 0, -thickness/2], m=""))
    th.extend(ob.oe(t="n", s="oobb_holes", holes="right",
              width=width, height=height, m=""))
    th.extend(ob.oe(t="n", s="oobb_holes", holes="left",
              width=width, height=height, m=""))

    width_cube = ob.gv("osp")*width-ob.gv("osp_minus")

    # bolt holes
    mode = "all"
    for hei in range(2, height):
        for wid in range(1, width+1):
            x, y = ob.get_hole_pos(wid, hei, width, height)
            th.extend(ob.oobb_easy(t="n", s="oobb_ziptie",
                      clearance=True, pos=[x, y, 0], mode=mode, m=""))

    return thing
