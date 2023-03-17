import oobb
import opsc
import oobb_base as ob
from oobb_variables import *


def get_oobb_plate(**kwargs):
    kwargs.update({"width_mm": kwargs["width"] * ob.gv("osp") - ob.gv("osp_minus")})
    kwargs.update({"height_mm": (kwargs["height"] * ob.gv("osp")) - ob.gv("osp_minus")})
    #set the size
    kwargs.update({"size": [kwargs["width_mm"], kwargs["height_mm"], kwargs["depth_mm"]]})

    kwargs.update({"shape": "rounded_rectangle"})
    return opsc.opsc_easy(**kwargs)    

def get_oobb_holes(holes="all", **kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    width = kwargs["width"]
    height = kwargs["height"]
    x = kwargs["pos"][0]
    y = kwargs["pos"][1]
    z = kwargs["pos"][2]
    if holes == "all":
        for mode in modes:
            #find the start point needs to be half the width_mm plus half osp
            pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, z]        
            objects.extend(ob.oobb_easy_array(type="negative", shape="hole", inclusion=mode,repeats=[width,height], pos_start = pos_start, shift_arr = [ob.gv("osp"),ob.gv("osp")], r=ob.gv("hole_radius_m6", mode) ))
    elif holes == "perimeter":
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        #pos_start = [0,0,0]
        for w in range(0,width):
            for h in range(0,height):
                if w == 0 or w == width-1 or h == 0 or h == height-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[x,y,0], radius_name="m6", m="" ))
    elif holes == "u":
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        #pos_start = [0,0,0]
        for w in range(0,width):
            for h in range(0,height):
                if w == 0 or w == width-1 or h == 0:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[x,y,0], radius_name="m6", m="" ))
    elif holes == "top":
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        #pos_start = [0,0,0]
        for w in range(0,width):
            for h in range(0,height):
                if w == 0:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[x,y,0], radius_name="m6", m="" ))
                
            
    return objects


def get_oobe_plate(**kwargs):
    kwargs.update({"width_mm": kwargs["width"] * ob.gv("ospe") - ob.gv("ospe_minus")})
    kwargs.update({"height_mm": (kwargs["height"] * ob.gv("ospe")) - ob.gv("ospe_minus")})
    #set the size
    kwargs.update({"size": [kwargs["width_mm"], kwargs["height_mm"], kwargs["depth_mm"]]})

    kwargs.update({"shape": "rounded_rectangle"})
    kwargs.update({"r": 2.5})
    
    return opsc.opsc_easy(**kwargs)    

def get_oobb_holes_old(**kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    width = kwargs["width"]
    height = kwargs["height"]
    x = kwargs["pos"][0]
    y = kwargs["pos"][1]
    z = kwargs["pos"][2]
    for mode in modes:
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, z]
        
        objects.extend(ob.oobb_easy_array(type="negative", shape="hole", inclusion=mode,repeats=[width,height], pos_start = pos_start, shift_arr = [ob.gv("osp"),ob.gv("osp")], r=ob.gv("hole_radius_m6", mode) ))
    return objects

def get_oobe_holes(**kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    width = kwargs["width"]
    height = kwargs["height"]
    x = kwargs["pos"][0]
    y = kwargs["pos"][1]
    z = kwargs["pos"][2]
    for mode in modes:
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("ospe")/2) + ob.gv("ospe")/2, y + -(height*ob.gv("ospe")/2) + ob.gv("ospe")/2, z]
        
        objects.extend(ob.oobb_easy_array(type="negative", shape="hole", inclusion=mode,repeats=[width,height], pos_start = pos_start, shift_arr = [ob.gv("ospe"),ob.gv("ospe")], r=ob.gv("hole_radius_m3", mode) ))
    return objects

import copy
def get_oobb_countersunk(include_nut=True, **kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    shifts = []

    

    for mode in modes:  
        radius = kwargs["radius_name"]      
        # countersink bit
        p2 = copy.deepcopy(kwargs)
        h = ob.gv(f'screw_countersunk_height_{radius}', mode)
        depth = kwargs["depth"]
        rot = kwargs.get("rotY", 0)
        if rot == 180:
            shifts = [-depth+h,0,0]
        else:
            shifts = [-h,-depth,-depth]
        
        pos1 = kwargs.get("pos", [0,0,0])
        p2["pos"] = [pos1[0], pos1[1], pos1[2] + shifts[0]]
        

        p2["r1"] = ob.gv(f"hole_radius_{radius}", mode)
        p2["r2"] = ob.gv(f"screw_countersunk_radius_{radius}", mode)
        p2["h"] = h
        
        p2["shape"] = "cylinder"
        p2["inclusion"] = mode
        objects.append(ob.oobb_easy(**p2))      
    # hole
    p2 = copy.deepcopy(kwargs)
    p2["shape"] = "oobb_hole"
    p2["inclusion"] = mode
    pos1 = kwargs.get("pos", [0,0,0])
    p2["pos"] = [pos1[0], pos1[1], pos1[2] + shifts[1]]
    objects.extend(ob.oobb_easy(**p2))
    # nut
    if include_nut:
        p2 = copy.deepcopy(kwargs)
        ##maybe add a nut level argument later
        p2["shape"] = "oobb_nut"
        p2["inclusion"] = mode
        p2["pos"] = [kwargs["pos"][0], kwargs["pos"][1], kwargs["pos"][2] + shifts[2]]
        p2["rotZ"] = 360/12
        objects.extend(ob.oobb_easy(**p2))
    

    return objects

def get_oobb_hole(**kwargs):
    modes = ["laser", "3dpr", "true"]
    return_value = []
    try:
        depth = kwargs["depth"]
    except:
        depth = 250
        try:
            kwargs["pos"][2] = kwargs["pos"][2] - depth /2
        except:
            kwargs["z"] = kwargs["z"] - depth /2

    for mode in modes:
        kwargs["shape"] = "cylinder"
        kwargs.update({"r": ob.gv("hole_radius_"+kwargs["radius_name"], mode)})
        kwargs.update({"h": depth})
        kwargs.update({"inclusion": mode})
        return_value.append(opsc.opsc_easy(**kwargs))
    return return_value


def get_oobb_nut_loose(**kwargs):
    kwargs["loose"] = True
    return get_oobb_nut(**kwargs)

def get_oobb_nut(loose=False,**kwargs):
    l_string = ""
    if loose:
        l_string = "loose_"

    modes = ["laser", "3dpr", "true"]
    return_value = []
    for mode in modes:
        kwargs["shape"] = "polyg"
        kwargs["sides"] = 6
        kwargs["inclusion"] = mode
        radius_name = kwargs["radius_name"]
        kwargs.update({"r": ob.gv(f"nut_radius_{l_string}{radius_name}", mode)})
        kwargs.update({"height": ob.gv(f"nut_depth_{l_string}{radius_name}", mode)})
        return_value.append(opsc.opsc_easy(**kwargs))
    return return_value
