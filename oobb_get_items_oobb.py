from oobb_get_items_base import *
import oobb_base as ob

def get_ja(wid,hei,thick,size,overwrite=True):
    if size == "oobb":
        return get_ja_oobb(wid,hei,thick,overwrite)
    elif size == "oobe":
        return get_ja_oobe(wid,hei,thick,overwrite)
    else:
        print("size not recognized")
        return None

def get_ja_oobb(wid,hei,thick,overwrite=True):
    thing = ob.get_default_thing()
    thing.update({"description": f"jack {wid}x{hei}x{thick}"})
    thing.update({"id": f"oobb_ja_{str(wid).zfill(2)}_{str(hei).zfill(2)}_{str(thick).zfill(2)}"})
    thing.update({"type": "ja"})
    thing.update({"type_oobb": "jack"})
    thing.update({"width_mm": wid})
    thing.update({"width_oobb": wid * ob.gv("osp") - ob.gv("osp_minus")})
    thing.update({"depth_mm": thick})
    thing.update({"height_mm": hei * ob.gv("osp") - ob.gv("osp_minus")})
    thing.update({"height_oobb": hei})
    thing.update({"components": []})

    # solid piece
    
    th = thing["components"]

    height_cube = 13.5
    y_plate = height_cube + (hei-1)*ob.gv("osp")/2
    
    th.extend(ob.oe(t="p",s="oobb_pl", width=wid, height=hei, depth_mm=thick, pos=[0,y_plate,-thick/2], mode="all"))
    
    width_cube = ob.gv("osp")*wid-ob.gv("osp_minus")
    
    th.append(ob.oobb_easy(t="p",s="cube", size=[width_cube,height_cube,thick], pos=[-width_cube/2,0,-thick/2], mode="all"))    
    
    # bolt holes
    mode = "all"
    for x in range(0,wid):
        x = (-wid/2*ob.gv("osp")+ob.gv("osp")/2)+x*ob.gv("osp")
        y = height_cube
        z= 0

        th.extend(ob.oobb_easy(t="n",s="oobb_hole", radius_name="m6", depth=height_cube, pos=[x,y,z], rotX=90, mode=mode, m=""))
        
        # nut height
        y = 9    
        th.extend(ob.oobb_easy(t="n",s="oobb_nut_loose", radius_name="m6", depth=height_cube, pos=[x,y,z], rotX=90, mode=mode, m="#"))
    #add m3 countersunk joining screws
    rot_current = 0
    for x in range(0,wid-1):
        x = (-wid/2*ob.gv("osp")+ob.gv("osp"))+x*ob.gv("osp")
        y = height_cube
        z= thick/2
    
        th.extend(ob.oobb_easy(t="n",s="oobb_countersunk", radius_name="m3", depth=12, pos=[x,y,z], mode=mode, m="", rotY=rot_current))
        rot_current = rot_current + 180
           


    # halfing it if 3dpr
    inclusion = "3dpr"
    th.append(ob.oobb_easy(t="n",s="cube", size=[500,500,500], pos=[-500/2,-500/2,0], inclusion=inclusion))

    return thing

def get_ja_oobe(wid,hei,thick,overwrite=True):
    thick = int(thick / 2)
    thing = ob.get_default_thing()
    thing.update({"description": f"oobe jack {wid}x{hei}x{thick}"})
    thing.update({"id": f"oobe_ja_{str(wid).zfill(2)}_{str(hei).zfill(2)}_{str(thick).zfill(2)}"})
    thing.update({"type": "ja"})
    thing.update({"type_oobb": "jack"})
    thing.update({"width_mm": wid})
    thing.update({"width_oobb": wid * ob.gv("ospe") - ob.gv("ospe_minus")})
    thing.update({"depth_mm": thick})
    thing.update({"height_mm": hei * ob.gv("ospe") - ob.gv("ospe_minus")})
    thing.update({"height_oobb": hei})
    thing.update({"components": []})

    # solid piece
    
    th = thing["components"]

    height_cube = 13.5/2
    y_plate = height_cube + (hei-1)*ob.gv("ospe")/2
    
    th.extend(ob.oe(t="p",s="oobe_pl", width=wid, height=hei, depth_mm=thick, pos=[0,y_plate,-thick/2], mode="all"))
    
    width_cube = ob.gv("ospe")*wid-ob.gv("ospe_minus")
    
    th.append(ob.oobb_easy(t="p",s="cube", size=[width_cube,height_cube,thick], pos=[-width_cube/2,0,-thick/2], mode="all"))    
    
    # bolt holes
    mode = "all"
    for x in range(0,wid):
        x = (-wid/2*ob.gv("ospe")+ob.gv("ospe")/2)+x*ob.gv("ospe")
        y = height_cube
        z= 0

        th.extend(ob.oobb_easy(t="n",s="oobb_hole", radius_name="m3", depth=height_cube, pos=[x,y,z], rotX=90, mode=mode, m=""))
        
        y = 4    
        th.extend(ob.oobb_easy(t="n",s="oobb_nut", radius_name="m3", depth=height_cube, pos=[x,y,z], rotX=90, rotY=360/12, mode=mode, m='#'))
    #add m3 countersunk joining screws
    rot_current = 0
    for x in range(0,wid-1):
        x = (-wid/2*ob.gv("ospe")+ob.gv("ospe"))+x*ob.gv("ospe")
        y = height_cube
        z= thick/2
    
        th.extend(ob.oobb_easy(t="n",s="oobb_countersunk", radius_name="m15d", depth=12/2, pos=[x,y,z], mode=mode, m="", rotY=rot_current))
        rot_current = rot_current + 180
        
        


    # halfing it if 3dpr
    inclusion = "3dpr"
    th.append(ob.oobb_easy(t="n",s="cube", size=[500,500,500], pos=[-500/2,-500/2,0], inclusion=inclusion))

    return thing

def get_mp(width=1,height=1,depth=3, width_mounting=10, height_mounting=10, radius_hole="m3", overwrite=True,**kwargs):
    thing = ob.get_default_thing()
    thing.update({"description": f"mounting plate {width} wide and {height} high and {depth} deep. with mounting holes for a rectangluar board {width_mounting} wide and {height_mounting} high with holes of radius {radius_hole}"})
    thing.update({"id": f"oobb_mp_{str(width).zfill(2)}_{str(height).zfill(2)}_{str(depth).zfill(2)}_mh_{str(width_mounting).zfill(2)}_{str(height_mounting).zfill(2)}_{radius_hole}"})
    thing.update({"inclusion": "all"})
    thing.update({"type": "oobb_base"})
    thing.update({"type_oobb": "mp"})
    thing.update({"width_mm": width*ob.gv("osp") - ob.gv("osp_minus")})
    thing.update({"width_oobb": width})
    thing.update({"height_mm": height*ob.gv("osp") - ob.gv("osp_minus")})
    thing.update({"height_oobb": height})
    thing.update({"depth_mm": depth})
    thing.update({"components": []})

    th = thing["components"]
    th.append(ob.oobb_easy(t="p", s="oobb_plate", width=width, height=height, depth_mm=depth, pos=[0,0,0]))
    th.extend(ob.oobb_easy(t="n", s="oobb_holes", width=width, height=height, pos=[0,0,0], holes="perimeter", radius_name=radius_hole))
    ## add mounting holes
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[width_mounting/2,height_mounting/2,0], holes="perimeter", radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[-width_mounting/2,height_mounting/2,0], holes="perimeter", radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[width_mounting/2,-height_mounting/2,0], holes="perimeter", radius_name=radius_hole, m=""))
    th.extend(ob.oobb_easy(t="n", s="oobb_hole", pos=[-width_mounting/2,-height_mounting/2,0], holes="perimeter", radius_name=radius_hole, m=""))

    return thing

def get_pl(width,height,depth=3,overwrite=True,size="oobb",**kwargs):    
    if size == "oobb":
        return get_pl_oobb(width,height,depth,overwrite,**kwargs)
    if size == "oobe":
        return get_pl_oobe(width,height,depth/2,overwrite,**kwargs)

def get_pl_oobb(width,height,depth=3,overwrite=True,**kwargs):    
    thing = ob.get_default_thing()
    thing.update({"description": f"oobb plate {width} wide and {height} high and {depth} deep"})
    thing.update({"id": f"oobb_pl_{str(width).zfill(2)}_{str(height).zfill(2)}_{str(depth).zfill(2)}"})
    thing.update({"inclusion": "all"})
    thing.update({"type": "oobb_base"})
    thing.update({"type_oobb": "pl"})
    thing.update({"width_mm": width*ob.gv("osp") - ob.gv("osp_minus")})
    thing.update({"width_oobb": width})
    thing.update({"height_mm": height*ob.gv("osp") - ob.gv("osp_minus")})
    thing.update({"height_oobb": height})
    thing.update({"depth_mm": depth})
    thing.update({"components": []})

    th = thing["components"]

    th.append(ob.oobb_easy(t="p", s="oobb_plate", width=width, height=height, depth_mm=depth, pos=[0,0,0]))
    modes = ["laser", "3dpr", "true"]
    for mode in modes:
        #find the start point needs to be half the width_mm plus half ob.gv("osp")
        pos_start = [-(width*ob.gv("osp")/2) + ob.gv("osp")/2, -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        
        th.extend(ob.oobb_easy_array(t="n", s="hole", inclusion=mode,repeats=[width,height], pos_start = pos_start, shift_arr = [ob.gv("osp"),ob.gv("osp")], r=ob.gv("hole_radius_m6", mode) ))
    
    return thing

def get_pl_oobe(width,height,depth=1.5,overwrite=True,**kwargs):    
    thing = ob.get_default_thing()
    thing.update({"description": f"oobe plate {width} wide and {height} high and {depth} deep"})
    dep = str(depth).replace(".","d")
    thing.update({"id": f"oobe_pl_{str(width).zfill(2)}_{str(height).zfill(2)}_{dep}"})
    thing.update({"inclusion": "all"})
    thing.update({"type": "oobe_base"})
    thing.update({"type_oobb": "pl"})
    thing.update({"width_mm": width*ob.gv("ospe") - ob.gv("ospe_minus")})
    thing.update({"width_oobb": width})
    thing.update({"height_mm": height*ob.gv("ospe") - ob.gv("ospe_minus")})
    thing.update({"height_oobb": height})
    thing.update({"depth_mm": depth})
    thing.update({"components": []})

    th = thing["components"]

    th.append(ob.oobb_easy(t="p", s="oobe_plate", width=width, height=height, depth_mm=depth, pos=[0,0,0]))
    modes = ["laser", "3dpr", "true"]
    for mode in modes:
        #find the start point needs to be half the width_mm plus half ob.gv("osp")
        pos_start = [-(width*ob.gv("ospe")/2) + ob.gv("ospe")/2, -(height*ob.gv("ospe")/2) + ob.gv("ospe")/2, 0]
        
        th.extend(ob.oobb_easy_array(t="n", s="hole", inclusion=mode,repeats=[width,height], pos_start = pos_start, shift_arr = [ob.gv("ospe"),ob.gv("ospe")], r=ob.gv("hole_radius_m3", mode) ))
    
    return thing
