from oobb_get_items_base import *
import oobb_base as ob

def get_ja(wid,hei,thick,overwrite=True):
    thing = ob.get_default_thing()
    thing.update({"description": f"jack {wid}x{hei}x{thick}"})
    thing.update({"id": f"oobb_ja_{str(wid).zfill(2)}_{str(hei).zfill(2)}_{str(thick).zfill(2)}"})
    thing.update({"type": "ja"})
    thing.update({"type_oobb": "jack"})
    thing.update({"width_mm": wid})
    thing.update({"width_oobb": wid})
    thing.update({"depth_mm": thick})
    thing.update({"height_mm": hei})
    thing.update({"height_oobb": hei})
    thing.update({"components": []})

    # solid piece
    
    height_cube = 13.5
    y_plate = height_cube + (hei-1)*ob.gv("osp")/2
    thing["components"].extend(ob.oobb_easy(type="positive",shape="oobb_pl", width=wid, height=hei, depth_mm=thick, pos=[0,y_plate,-thick/2], mode="all"))
    width_cube = ob.gv("osp")*wid-ob.gv("osp_minus")
    
    thing["components"].append(ob.oobb_easy(type="positive",shape="cube", size=[width_cube,height_cube,thick], pos=[-width_cube/2,0,-thick/2], mode="all"))    
    # bolt holes
    mode = "all"
    for x in range(0,wid):
        x = (-wid/2*ob.gv("osp")+ob.gv("osp")/2)+x*ob.gv("osp")
        y = height_cube
        z= 0

        thing["components"].extend(ob.oobb_easy(type="negative",shape="oobb_hole", radius_name="m6", depth=height_cube, pos=[x,y,z], rotX=90, mode=mode, m=""))
        y = 10
        thing["components"].extend(ob.oobb_easy(type="negative",shape="oobb_nut", radius_name="m6", depth=height_cube, pos=[x,y,z], rotX=90, mode=mode))
    #add m3 countersunk joining screws
    rot_current = 0
    for x in range(0,wid-1):
        x = (-wid/2*ob.gv("osp")+ob.gv("osp"))+x*ob.gv("osp")
        y = height_cube
        z= thick/2
        thing["components"].extend(ob.oobb_easy(type="negative",shape="oobb_countersunk", radius_name="m3", depth=12, pos=[x,y,z], mode=mode, m="", rotY=rot_current))
        rot_current = rot_current + 180
        
        


    # halfing it if 3dpr
    inclusion = "3dpr"
    thing["components"].append(ob.oobb_easy(type="negative",shape="cube", size=[500,500,500], pos=[-500/2,-500/2,0], inclusion=inclusion))

    return thing


def get_pl(width,height,depth=3,overwrite=True,**kwargs):    
    thing = ob.get_default_thing()
    thing.update({"description": f"plate {width} wide and {height} high and {depth} deep"})
    thing.update({"id": f"oobb_pl_{str(width).zfill(2)}_{str(height).zfill(2)}_{str(depth).zfill(2)}"})
    thing.update({"inclusion": "all"})
    thing.update({"type": "oobb_base"})
    thing.update({"type_oobb": "pl"})
    thing.update({"width_mm": width*ob.gv("osp") - ob.gv("osp_minus")})
    thing.update({"width_oobb": width})
    thing.update({"height_mm": height*ob.gv("osp") - ob.gv("osp_minus")})
    thing.update({"height_oobb": height})
    
    objects = []

    objects.append(ob.oobb_easy(type="positive", shape="oobb_plate", width=width, height=height, depth_mm=depth, pos=[0,0,0]))
    modes = ["laser", "3dpr", "true"]
    for mode in modes:
        #find the start point needs to be half the width_mm plus half ob.gv("osp")
        pos_start = [-(width*ob.gv("osp")/2) + ob.gv("osp")/2, -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        
        objects.extend(ob.oobb_easy_array(type="negative", shape="hole", inclusion=mode,repeats=[width,height], pos_start = pos_start, shift_arr = [ob.gv("osp"),ob.gv("osp")], r=ob.gv("hole_radius_m6", mode) ))
    thing.update({"components": objects})
    return thing
