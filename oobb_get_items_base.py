import copy
import math

import opsc
import solid as sp

import oobb
import oobb_base as ob
from oobb_variables import *


def get_oobb_bearing(**kwargs):
    objects = []
    bearing_type = kwargs["bearing_type"]

    modes = ["laser", "true", "3dpr"]
    for mode in modes:
        kwargs["inclusion"] = mode
        kwargs["id"] = ob.gv(f"bearing_{bearing_type}_id", mode)
        kwargs["od"] = ob.gv(f"bearing_{bearing_type}_od", mode)
        kwargs["depth"] = ob.gv(f"bearing_{bearing_type}_depth", mode)
        kwargs["shape"] = "bearing"
        kwargs["clearance"] = ob.gv(f"bearing_{bearing_type}_clearance", mode)
        objects.append(opsc.opsc_easy(**kwargs))

    return objects

    return


def get_oobb_bolt(include_nut=True, **kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    shifts = []

    for mode in modes:
        radius = kwargs["radius_name"]
        # countersink bit
        p2 = copy.deepcopy(kwargs)
        h = ob.gv(f'bolt_depth_{radius}', mode)
        depth = kwargs["depth"]
        rot = kwargs.get("rotY", 0)
        if rot == 180:
            shifts = [0, depth, depth]
        else:
            shifts = [0, -depth, -depth]

        pos = kwargs.get("pos", [0, 0, 0])
        pos1 = kwargs.get("pos", [0, 0, 0])
        p2["pos"] = [pos1[0], pos1[1], pos1[2] + shifts[0]]

        p2["r"] = ob.gv(f"bolt_radius_{radius}", mode)
        p2["h"] = h

        p2["shape"] = "polyg"
        p2["sides"] = 6
        p2["inclusion"] = mode
        objects.append(ob.oobb_easy(**p2))
    # hole
    p2 = copy.deepcopy(kwargs)
    p2["shape"] = "oobb_hole"
    p2["inclusion"] = mode

    p2["pos"] = [pos1[0], pos1[1], pos1[2] + shifts[1]]
    objects.extend(ob.oobb_easy(**p2))
    # nut
    if include_nut:
        p2 = copy.deepcopy(kwargs)
        # maybe add a nut level argument later
        p2["shape"] = "oobb_nut"
        p2["inclusion"] = mode
        pos1 = kwargs.get("pos", [0, 0, 0])
        p2["pos"] = [pos[0], pos[1], pos[2] + shifts[2]]
        # p2["rotZ"] = 360/12
        objects.extend(ob.oobb_easy(**p2))

    return objects


def get_oobb_cube_center(**kwargs):
    kwargs.update({"shape": "cube"})
    all = kwargs.get("all", False)
    if not all:
        new_pos = [kwargs["pos"][0] - kwargs["size"][0]/2,
                kwargs["pos"][1] - kwargs["size"][1]/2, kwargs["pos"][2]]
    else:
        new_pos = [kwargs["pos"][0] - kwargs["size"][0]/2,
                kwargs["pos"][1] - kwargs["size"][1]/2, kwargs["pos"][2] - kwargs["size"][2]/2]
    kwargs.update({"pos": new_pos})
    return opsc.opsc_easy(**kwargs)


def get_oobb_circle(**kwargs):
    kwargs.update(
        {"radius": kwargs["diameter"]/2 * ob.gv("osp") - ob.gv("osp_minus")})
    # set the size
    kwargs.update({"shape": "oobb_cylinder"})
    return oobb.oobb_easy(**kwargs)


def get_oobb_plate(**kwargs):

    # if 1 x 1 than just cylinder
    if kwargs["width"] == 1 and kwargs["height"] == 1:
        kwargs.update({"r": (kwargs["width"]
                    * ob.gv("osp") - ob.gv("osp_minus"))/2})
        kwargs.update({"h": kwargs["depth_mm"]})
        kwargs.update({"shape": "cylinder"})
        return opsc.opsc_easy(**kwargs)

    else:
        kwargs.update({"width_mm": kwargs["width"]
                    * ob.gv("osp") - ob.gv("osp_minus")})
        kwargs.update(
            {"height_mm": (kwargs["height"] * ob.gv("osp")) - ob.gv("osp_minus")})
        # set the size
        kwargs.update(
            {"size": [kwargs["width_mm"], kwargs["height_mm"], kwargs["depth_mm"]]})

        kwargs.update({"shape": "rounded_rectangle"})
        return opsc.opsc_easy(**kwargs)


def get_oobb_holes(holes=["all"], **kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    width = kwargs["width"]
    height = kwargs["height"]
    pos = kwargs.get("pos", [0, 0, 0])
    radius_name = kwargs.get("radius_name", "m6")
    middle = kwargs.get("middle", True)
    x = pos[0]
    y = pos[1]
    z = pos[2]
    if isinstance(holes, str):
        holes = [holes]
    if isinstance(holes, bool):
        if holes:
            holes = ["all"]
        else:
            holes = ["none"]

    m = kwargs.get("m", "")
    xx = x
    yy = y
    if "all" in holes:
        for mode in modes:
            # find the start point needs to be half the width_mm plus half osp
            pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                         yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, z]
            objects.extend(ob.oobb_easy_array(type="negative", shape="hole", inclusion=mode, repeats=[
                           width, height], pos_start=pos_start, shift_arr=[ob.gv("osp"), ob.gv("osp")], r=ob.gv(f"hole_radius_{radius_name}", mode)))
    if "perimiter" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        for w in range(0, width):
            for h in range(0, height):
                if w == 0 or w == width-1 or h == 0 or h == height-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
    if "perimeter_miss_middle" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        for w in range(0, width):
            for h in range(0, height):
                if w == 0 or w == width-1 or h == 0 or h == height-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    w_test = math.floor(width/2)
                    h_test = math.floor(height/2)
                    if h != h_test and w != w_test:
                        objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                       x, y, 0], radius_name=radius_name, m=m))
    if "u" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        for w in range(0, width):
            for h in range(0, height):
                if w == 0 or w == width-1 or h == 0:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
    if "top" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        for w in range(0, width):
            for h in range(0, height):
                if w == 0:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
    if "bottom" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        for w in range(0, width):
            for h in range(0, height):
                if w == width-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
    if "right" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        for w in range(0, width):
            for h in range(0, height):
                if h == height-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
    if "left" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        for w in range(0, width):
            for h in range(0, height):
                if h == 0:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
    if "bottom" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        for w in range(0, width):
            for h in range(0, height):
                if w == width-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
    if "circle" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        circle_dif = kwargs.get("circle_dif", 0)
        for w in range(0, math.floor(width)):
            for h in range(0, math.floor(height)):
                x = pos_start[0] + w*ob.gv("osp")
                y = pos_start[1] + h*ob.gv("osp")
                # only include if inside a circle of radius width * ob,gv("osp")/2
                r = ((width*ob.gv("osp")) - circle_dif)/2
                if math.sqrt(x**2 + y**2) <= r:
                    # check if middle
                    if w == math.floor(width/2) and h == math.floor(height/2) and not middle:
                        pass
                    else:
                        objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                       x, y, 0], radius_name=radius_name, m=m))
    if "corners" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        for w in range(0, width):
            for h in range(0, height):
                if w == 0 and h == 0:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
                if w == 0 and h == height-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
                if w == width-1 and h == 0:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
                if w == width-1 and h == height-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
    if "single" in holes:
        # find the start point needs to be half the width_mm plus half osp
        loc = kwargs.get("loc", [0, 0])
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        x = pos_start[0] + (loc[0]-1)*ob.gv("osp")
        y = pos_start[1] + (loc[1]-1)*ob.gv("osp")
        objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                       x, y, 0], radius_name=radius_name, m=m))
    if "missing_middle" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [xx + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     yy + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        # pos_start = [0,0,0]
        for w in range(0, width):
            for h in range(0, height):
                if w == math.floor(width/2) and h == math.floor(height/2):
                    pass
                else:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[
                                   x, y, 0], radius_name=radius_name, m=m))
    if "just_middle" in holes:
        # find the start point needs to be half the width_mm plus half osp
        pos = [0,0,0]
        objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=pos, radius_name=radius_name, m=m))

    return objects


def get_oobe_plate(**kwargs):
    kwargs.update({"width_mm": kwargs["width"]
                  * ob.gv("ospe") - ob.gv("ospe_minus")})
    kwargs.update(
        {"height_mm": (kwargs["height"] * ob.gv("ospe")) - ob.gv("ospe_minus")})
    # set the size
    kwargs.update(
        {"size": [kwargs["width_mm"], kwargs["height_mm"], kwargs["depth_mm"]]})

    kwargs.update({"shape": "rounded_rectangle"})
    kwargs.update({"r": 2.5})

    return opsc.opsc_easy(**kwargs)


def get_oobb_slot_old(**kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    w = kwargs["w"]
    for mode in modes:
        radius_name = kwargs.get("radius_name")
        radius = ob.gv(f"hole_radius_{radius_name}", mode)
        kwargs.update({"inclusion": mode})
        kwargs.update({"shape": "slot"})
        kwargs.update({"r": radius})
        kwargs["w"] = w + radius*2

        objects.append(opsc.opsc_easy(**kwargs))

    return objects


def get_oobb_holes_old(**kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    width = kwargs["width"]
    height = kwargs["height"]
    x = kwargs["pos"][0]
    y = kwargs["pos"][1]
    z = kwargs["pos"][2]
    for mode in modes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2,
                     y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, z]

        objects.extend(ob.oobb_easy_array(type="negative", shape="hole", inclusion=mode, repeats=[
                       width, height], pos_start=pos_start, shift_arr=[ob.gv("osp"), ob.gv("osp")], r=ob.gv("hole_radius_m6", mode)))
    return objects


def get_oobe_holes(**kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    width = kwargs["width"]
    height = kwargs["height"]
    kwargs["pos"] = kwargs.get("pos", [0, 0, 0])
    x = kwargs["pos"][0]
    y = kwargs["pos"][1]
    z = kwargs["pos"][2]
    for mode in modes:
        # find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("ospe")/2) + ob.gv("ospe")/2,
                     y + -(height*ob.gv("ospe")/2) + ob.gv("ospe")/2, z]

        objects.extend(ob.oobb_easy_array(type="negative", shape="hole", inclusion=mode, repeats=[
                       width, height], pos_start=pos_start, shift_arr=[ob.gv("ospe"), ob.gv("ospe")], r=ob.gv("hole_radius_m3", mode)))
    return objects


def get_oobb_motor_gearmotor_01(**kwargs):
    part = kwargs.get("part", "all")
    if part == "all":
        objects = []
        pos = kwargs.get("pos", [0, 0, 0])
        x = pos[0]
        y = pos[1]
        z = pos[2]
        thickness = kwargs.get("thickness", 3)

        # kwargs["m"] = "#"

        # shaft hole
        p2 = copy.deepcopy(kwargs)
        p2["pos"] = [x, y, z]
        p2["shape"] = "oobb_hole"
        p2["radius_name"] = "m8"
        objects.extend(ob.oobb_easy(**p2))

        # clearance hole
        p3 = copy.deepcopy(kwargs)
        p3["pos"] = [x-11, y, z]
        p3["shape"] = "oobb_hole"
        p3["radius_name"] = "m6"
        objects.extend(ob.oobb_easy(**p3))

        # mounting holes
        poss = [-20, 8.5, thickness], [-20, -8.5, thickness] #, [12, 0, thickness]
        for pos in poss:
            p4 = copy.deepcopy(kwargs)
            p4["pos"] = [x+pos[0], y+pos[1], z+pos[2]]
            p4["shape"] = "oobb_countersunk"
            p4["radius_name"] = "m3"
            p4["include_nut"] = False
            p4["depth"] = 25
            p4["top_clearance"] = True
            objects.extend(ob.oobb_easy(**p4))

        # rear clearance cube
        p5 = copy.deepcopy(kwargs)
        p5["pos"] = [x-40-28/2, y-14/2, z-50]
        p5["shape"] = "cube"
        p5["size"] = [28, 14, 100]
        objects.append(ob.oobb_easy(**p5))

        return objects
    elif part == "shaft":
        """ waiting to be able to do intersects and multi level things
        objects = []    
        pos = kwargs.get("pos", [0,0,0])
        x = pos[0]
        y = pos[1]
        z = pos[2]
        
        shaft_dia = 5.5
        p2 = copy.deepcopy(kwargs)
        p2["shape"] = "oobb_hole"
        p2["radius"] = shaft_dia /2
        objects.extend(ob.oobb_easy(**p2))

        p3 = copy.deepcopy(kwargs)
        p3["shape"] = "oobb_cube_center"
        p3["size"] = [shaft_dia,0.875,100]
        p3["pos"] = [x,y+2.313,-50]
        objects.append(ob.oobb_easy(**p3))

        p4 = copy.deepcopy(p3)
        p4["pos"] = [x,y-2.313,-50]
        objects.append(ob.oobb_easy(**p4))
        """
        objects = []
        pos = kwargs.get("pos", [0, 0, 0])
        x = pos[0]
        y = pos[1]
        z = pos[2]

        shaft_dia = 5.5
        shaft_height = 3.75+.1

        p3 = copy.deepcopy(kwargs)
        p3["shape"] = "oobb_cube_center"
        p3["size"] = [shaft_dia, shaft_height, 100]
        p3["pos"] = [x, y, -50]
        objects.append(ob.oobb_easy(**p3))
        return objects


def get_oobb_screw_countersunk(**kwargs):
    return get_oobb_countersunk(**kwargs)



def get_oobb_countersunk(**kwargs):
    objects = []
    top_clearance = kwargs.get("top_clearance", False)
    modes = kwargs.get("mode", ["laser", "3dpr", "true"])
    if "all" in modes:
        modes = ["laser", "3dpr", "true"]
    if isinstance(modes, str):
        modes = [modes]

    shifts = []
    sandwich = kwargs.get("sandwich", False)
    include_nut_initial = kwargs.get("include_nut", True)

    # kwargs["m"] = "#"

    for mode in modes:
        radius = kwargs["radius_name"]
        # countersunk bit
        p2 = copy.deepcopy(kwargs)
        # p2["m"] = ""
        p2["inclusion"] = mode
        pos = p2.get("pos", [0, 0, 0])
        p2["pos"] = [pos[0], pos[1], pos[2]]
        depth = kwargs["depth"]
        rot = kwargs.get("rotY", 0)

        # top always countersunk size
        p2["r2"] = ob.gv(f"screw_countersunk_radius_{radius}", mode)
        if mode != "laser":
            p2["r1"] = ob.gv(f"hole_radius_{radius}", mode)
            h = ob.gv(f'screw_countersunk_height_{radius}', mode)
            include_nut = include_nut_initial
        else:
            # make a cylinder if laser
            p2["r1"] = ob.gv(f"screw_countersunk_radius_{radius}", mode)
            pass
            # remove nut if sandwich
            if sandwich:
                include_nut = False
            h = 3
            p2["pos"][2] = p2["pos"][2]
        p2["h"] = h
        # calculate shifts rather than rotating
        # index 0 shift for countersunk
        # index 1 shift for
        # index 2 shift for
        # index 3 shift for sandwich
        # index 4 shift for standoff
        if rot == 180:
            shifts = [-depth+h, 0, 0, depth-3-3, 0]
        else:
            shifts = [-h, -depth, -depth, -depth, depth/2]

        pos1 = kwargs.get("pos", [0, 0, 0])
        p2["pos"] = [pos1[0], pos1[1], pos1[2] + shifts[0]]
        p2["shape"] = "cylinder"
        p2["inclusion"] = mode
        objects.append(ob.oobb_easy(**p2))
        # if sandwich add second cylinder and internal standoff
        if mode == "laser" and sandwich:
            # add a second cylinder
            p3 = copy.deepcopy(p2)
            p3["inclusion"] = mode
            p3["mode"] = mode
            p3["pos"] = [pos1[0], pos1[1], pos1[2] + shifts[0] + shifts[3] + 3]
            objects.append(ob.oobb_easy(**p3))
            # standoff
            p4 = copy.deepcopy(kwargs)
            p4["shape"] = "oobb_standoff"
            p4["inclusion"] = mode
            p4["mode"] = mode
            pos1 = p4.get("pos", [0, 0, 0])
            p4["depth"] = depth - 6
            p4["pos"] = [pos1[0], pos1[1], pos1[2] +
                         shifts[0] + shifts[3] + shifts[4]]

            p4["hole"] = True
            # p4["m"] = ""
            objects.extend(ob.oobb_easy(**p4))
        p3 = copy.deepcopy(p2)
        # addinf top clearance not a great implementation only really works with 3dpr
        if top_clearance and mode == "3dpr":
            p3["shape"] = "cylinder"
            p3["r1"] = p2["r2"]
            p3['h'] = 250
            p3["pos"][2] = p3["pos"][2] + p2['h']
            #p3['m'] = "#"
            objects.append(ob.oobb_easy(**p3))


    # hole
    p2 = copy.deepcopy(kwargs)
    p2["shape"] = "oobb_hole"
    p2["inclusion"] = mode
    pos1 = kwargs.get("pos", [0, 0, 0])
    p2["pos"] = [pos1[0], pos1[1], pos1[2] + shifts[1]]
    objects.extend(ob.oobb_easy(**p2))
    # nut
    if include_nut:
        if mode != "laser":
            p2 = copy.deepcopy(kwargs)
            # maybe add a nut level argument later
            p2["shape"] = "oobb_nut"
            p2["inclusion"] = mode
            p2["pos"] = [kwargs["pos"][0], kwargs["pos"]
                         [1], kwargs["pos"][2] + shifts[2]]
            # p2["m"] = "#"
            p2["mode"] = ["3dpr", "true"]
            # p2["rotZ"] = 360/12
            objects.extend(ob.oobb_easy(**p2))

    return objects


def get_oobb_screw_socket_cap(include_nut=True, **kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    shifts = []
    flush_top = kwargs.get("flush_top", False)
    hole = kwargs.get("hole", True)

    for mode in modes:
        radius = kwargs["radius_name"]
        # countersink bit
        p2 = copy.deepcopy(kwargs)
        h = ob.gv(f'screw_socket_cap_height_{radius}', mode)
        depth = kwargs["depth"]
        rot = kwargs.get("rotY", 0)        
        pos = kwargs.get("pos", [0, 0, 0])
        pos = copy.deepcopy(pos)

        if flush_top:
            pass
            shift = ob.gv(f'screw_socket_cap_height_{radius}', mode)
            pos[2] = pos[2] - shift
            depth = depth - ob.gv(f'screw_socket_cap_height_{radius}', mode)       
        pos1 = copy.deepcopy(pos)

        if rot == 180:
            shifts = [0, depth, depth]
        else:
            shifts = [0, -depth, -depth]
        


        
        p2["pos"] = [pos1[0], pos1[1], pos1[2] + shifts[0]]

        p2["r"] = ob.gv(f"screw_socket_cap_radius_{radius}", mode)
        p2["h"] = h

        p2["shape"] = "cylinder"
        p2["inclusion"] = mode
        objects.append(ob.oobb_easy(**p2))
    # hole
    if hole:
        p2 = copy.deepcopy(kwargs)
        p2["shape"] = "oobb_hole"
        p2["inclusion"] = mode

        p2["pos"] = [pos1[0], pos1[1], pos1[2] + shifts[1]]
        objects.extend(ob.oobb_easy(**p2))
    # nut
    if include_nut:
        p2 = copy.deepcopy(kwargs)
        # maybe add a nut level argument later
        p2["shape"] = "oobb_nut"
        p2["inclusion"] = mode
        pos1 = kwargs.get("pos", [0, 0, 0])
        p2["pos"] = [pos[0], pos[1], pos[2] + shifts[2]]
        # p2["rotZ"] = 360/12
        objects.extend(ob.oobb_easy(**p2))

    return objects


def get_oobb_threaded_insert(**kwargs):
    objects = []
    modes = kwargs.get("mode", ["laser", "3dpr", "true"])
    hole = kwargs.get("hole", True)
    if "all" in modes:
        modes = ["laser", "3dpr", "true"]
    if isinstance(modes, str):
        modes = [modes]
    style = kwargs.get("style", "01")
    depth = kwargs.get("depth", 0)
    rotY = kwargs.get("rotY", 0)
    insertion_cone = kwargs.get("insertion_cone", False)

    # kwargs["m"] = "#"

    for mode in modes:

        radius = kwargs["radius_name"]
        # countersunk bit
        p2 = copy.deepcopy(kwargs)
        # p2["m"] = ""
        radius_name = f'threaded_insert_{style}_radius_{radius}'
        depth_threaded = ob.gv(f'threaded_insert_{style}_depth_{radius}', mode)
        shifts = []
        if rotY == 180:
            shifts = [0, -depth_threaded/2]
        else:
            shifts = [-depth_threaded, depth_threaded/2]
        p2["radius_name"] = radius_name
        p2["depth"] = depth_threaded
        pos = p2.get("pos", [0, 0, 0])
        p2["pos"] = [pos[0], pos[1], pos[2]+shifts[0]+shifts[1]]
        p2["shape"] = "oobb_cylinder"
        p2["inclusion"] = mode
        # p2["m"] = "#"
        objects.extend(ob.oobb_easy(**p2))

        # hole
        if hole:
            p2 = copy.deepcopy(kwargs)
            p2["shape"] = "oobb_hole"
            p2["inclusion"] = mode
            p2.pop("depth", None)
            p2.pop("rotY", None)
            pos1 = kwargs.get("pos", [0, 0, 0])
            p2["pos"] = [pos1[0], pos1[1], 0]
            objects.extend(ob.oobb_easy(**p2))
        #insertion cone
        if insertion_cone:
            if mode == "3dpr":
                insertion_cone_extra = ob.gv(f'threaded_insert_{style}_insertion_cone_{radius}', mode)
                p2 = copy.deepcopy(kwargs)
                p2["shape"] = "cylinder"
                p2["inclusion"] = mode
                p2["pos"][2] = p2["pos"][2] - depth_threaded / 2 - insertion_cone_extra
                p2["h"] = insertion_cone_extra
                p2["r1"] = ob.gv(f'threaded_insert_{style}_radius_{radius}', mode)
                p2["r2"] = ob.gv(f'threaded_insert_{style}_radius_{radius}', mode) + insertion_cone_extra
                objects.append(ob.oobb_easy(**p2))
                p3 = copy.deepcopy(p2)
                p3["pos"][2] = p3["pos"][2] + insertion_cone_extra
                p3["r2"] = ob.gv(f'threaded_insert_{style}_radius_{radius}', mode)
                p3["r1"] = ob.gv(f'threaded_insert_{style}_radius_{radius}', mode) + insertion_cone_extra  
                objects.append(ob.oobb_easy(**p3))              
                
    return objects


def get_oobb_hole(**kwargs):
    modes = kwargs.get("mode", ["laser", "3dpr", "true"])
    if modes == "all":
        modes = ["laser", "3dpr", "true"]
    if type(modes) == str:
        modes = [modes]

    z = kwargs.get("z", 0)
    if z == 0:
        pos = kwargs.get("pos", [0, 0, 0])

    return_value = []
    try:
        depth = kwargs["depth"]
    except:
        depth = 250
        try:
            kwargs["pos"][2] = pos[2] - depth / 2
        except:
            kwargs["z"] = z - depth / 2

    try:
        radius_name = kwargs["radius_name"]
        for mode in modes:
            kwargs["shape"] = "cylinder"
            try:
                kwargs.update({"r": ob.gv("hole_radius_"+radius_name, mode)})
            except:
                r = ob.gv(radius_name, mode)
                kwargs.update({"r": r})
            kwargs.update({"h": depth})
            kwargs.update({"inclusion": mode})
            return_value.append(opsc.opsc_easy(**kwargs))
    except:
        for mode in modes:
            r = kwargs.get("r", kwargs.get("radius", 0))
            kwargs["shape"] = "cylinder"
            kwargs.update({"r": r})
            kwargs.update({"h": depth})
            kwargs.update({"inclusion": mode})
            return_value.append(opsc.opsc_easy(**kwargs))
    return return_value

def get_oobb_slot(**kwargs):
    modes = kwargs.get("mode", ["laser", "3dpr", "true"])
    if modes == "all":
        modes = ["laser", "3dpr", "true"]
    if type(modes) == str:
        modes = [modes]

    z = kwargs.get("z", 0)
    if z == 0:
        pos = kwargs.get("pos", [0, 0, 0])

    return_value = []
    try:
        depth = kwargs["depth"]
    except:
        depth = 250
        try:
            kwargs["pos"][2] = pos[2] - depth / 2
        except:
            kwargs["z"] = z - depth / 2

    try:
        radius_name = kwargs["radius_name"]
        for mode in modes:
            kwargs["shape"] = "slot_small"
            try:
                kwargs.update({"r": ob.gv("hole_radius_"+radius_name, mode)})
            except:
                r = ob.gv(radius_name, mode)
                kwargs.update({"r": r})
            kwargs.update({"h": depth})
            kwargs.update({"inclusion": mode})
            return_value.append(opsc.opsc_easy(**kwargs))
    except:
        for mode in modes:
            r = kwargs.get("r", kwargs.get("radius", 0))
            kwargs["shape"] = "slot_small"
            kwargs.update({"r": r})
            kwargs.update({"h": depth})
            kwargs.update({"inclusion": mode})
            return_value.append(opsc.opsc_easy(**kwargs))
    return return_value



def get_oobb_cylinder(**kwargs):

    radius_name = kwargs.get("radius_name", "")

    modes = ["laser", "3dpr", "true"]
    return_value = []
    # deciding how to define depth either string or name
    try:
        depth = kwargs["depth"]
    except:
        try:
            depth = kwargs["depth_mm"]
        except:
            depth = 250
    # figuring out z so it is in the middle of the object
    try:
        kwargs["pos"][2] = kwargs["pos"][2] - depth / 2
    except:
        try:
            kwargs["z"] = kwargs["z"] - depth / 2
        except:
            pass

    for mode in modes:
        kwargs["shape"] = "cylinder"
        if radius_name != "":
            kwargs.update({"r": ob.gv(radius_name, mode)})
        else:
            try:
                kwargs.update({"r": kwargs["radius"]})
            except:
                kwargs.update({"r": kwargs["r"]})
        if isinstance(depth, str):
            kwargs.update({"h": ob.gv(depth, mode)})
        else:
            kwargs.update({"h": depth})
        kwargs.update({"inclusion": mode})
        return_value.append(opsc.opsc_easy(**kwargs))
    return return_value


def get_oobb_nut_loose(**kwargs):
    kwargs["loose"] = True
    return get_oobb_nut(**kwargs)


def get_oobb_nut_through(**kwargs):
    kwargs["through"] = True
    return get_oobb_nut(**kwargs)


def get_oobb_nut(loose=False, through=False, **kwargs):
    l_string = ""
    if loose:
        l_string = "loose_"

    modes = kwargs.get("mode", ["laser", "3dpr", "true"])
    if modes == "all":
        modes = ["laser", "3dpr", "true"]
    if type(modes) == str:
        modes = [modes]
    return_value = []
    for mode in modes:
        if not through:
            p2 = copy.deepcopy(kwargs)
            p2["shape"] = "polyg"
            p2["sides"] = 6
            p2["inclusion"] = mode
            radius_name = p2["radius_name"]
            p2.update({"r": ob.gv(f"nut_radius_{l_string}{radius_name}", mode)})
            p2.update(
                {"height": ob.gv(f"nut_depth_{l_string}{radius_name}", mode)})
            return_value.append(opsc.opsc_easy(**p2))
        else:  # if through
            p2 = copy.deepcopy(kwargs)
            radius_name = p2["radius_name"]
            p2["shape"] = "cube"
            p2["inclusion"] = mode
            dep = ob.gv(f"nut_depth_loose_{radius_name}", mode)
            wid = ob.gv(f"nut_radius_loose_{radius_name}", mode) * 2 / 1.154
            hei = 100
            p2.update(
                {"pos": [p2["pos"][0]-wid/2, p2["pos"][1], p2["pos"][2]-25]})
            p2.update({"size": [wid, hei, dep]})
            return_value.append(opsc.opsc_easy(**p2))
    return return_value


def get_oobb_standoff(loose=False, hole=False, **kwargs):
    l_string = ""
    if loose:
        l_string = "loose_"

    modes = kwargs.get("inclusion", ["laser", "3dpr", "true"])
    if not isinstance(modes, list):
        modes = [modes]
    return_value = []
    depth = kwargs["depth"]
    if hole:
        p2 = copy.deepcopy(kwargs)
        p2["shape"] = "oobb_hole"
        p2["t"] = "n"
        p2["type"] = "n"
        p2["m"] = ""
        return_value.extend(ob.oobb_easy(**p2))
    for mode in modes:

        kwargs["shape"] = "polyg"
        kwargs["sides"] = 6
        kwargs["inclusion"] = mode
        radius_name = kwargs["radius_name"]
        kwargs.update(
            {"r": ob.gv(f"standoff_radius_{l_string}{radius_name}", mode)})
        kwargs.update({"height": depth})
        return_value.append(opsc.opsc_easy(**kwargs))
    return return_value

# 2 wire unpolarized 
def get_oobb_wi_m2(loose=False, through=False, **kwargs):

    modes = kwargs.get("mode", ["laser", "3dpr", "true"])
    if modes == "all":
        modes = ["laser", "3dpr", "true"]
    if type(modes) == str:
        modes = [modes]
    return_value = []
    for mode in modes:
        depth = ob.gv("wi_depth", mode)
        extra = ob.gv("wi_extra", mode)
        i01 = ob.gv("wi_i01", mode)
        p2 = copy.deepcopy(kwargs)
        
        wid = i01 + extra + 6 + 14
        hei = i01 * 2 + extra
        size = [wid, hei, depth]
        x = 11.282
        y = 0
        z = 0
        pos = [p2["pos"][0] + x, p2["pos"][1] + y, p2["pos"][2] + z]
        p2["shape"] = "oobb_cube_center"
        p2["pos"] = pos
        p2["size"] = size    
        p2["inclusion"] = mode    
        return_value.append(ob.oe(**p2))
        
    return return_value


def get_oobb_ziptie(**kwargs):
    modes = ["laser", "3dpr", "true"]
    return_value = []
    clearance = kwargs.get("clearance", False)
    for mode in modes:
        kwargs["shape"] = "oobb_cube_center"
        kwargs["center"] = True
        kwargs["inclusion"] = mode
        kwargs.update(
            {"size": [ob.gv("ziptie_width", mode), ob.gv("ziptie_height", mode), 100]})
        spacing_zt = 7

        p3 = copy.deepcopy(kwargs)
        p3.update({"pos": [kwargs["pos"][0], kwargs["pos"]
                  [1]-spacing_zt/2, kwargs["pos"][2] - 50]})
        return_value.append(ob.oobb_easy(**p3))
        p2 = copy.deepcopy(kwargs)
        p2.update({"pos": [kwargs["pos"][0], kwargs["pos"]
                  [1]+spacing_zt/2, kwargs["pos"][2]-50]})
        return_value.append(ob.oobb_easy(**p2))
        if clearance:
            p4 = copy.deepcopy(kwargs)
            p4.update(
                {"pos": [kwargs["pos"][0], kwargs["pos"][1], kwargs["pos"][2]]})
            p4.update({"size": [ob.gv("ziptie_width", mode), ob.gv(
                "ziptie_height", mode)+spacing_zt, 3], "m": ""})
            return_value.append(ob.oobb_easy(**p4))

    return return_value
