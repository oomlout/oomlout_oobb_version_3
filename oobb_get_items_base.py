import oobb
import opsc
import oobb_base as ob
from oobb_variables import *
import solid as sp

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
            shifts = [0,depth,depth]
        else:
            shifts = [0,-depth,-depth]
        
        pos = kwargs.get("pos", [0,0,0])
        pos1 = kwargs.get("pos", [0,0,0])
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
        ##maybe add a nut level argument later
        p2["shape"] = "oobb_nut"
        p2["inclusion"] = mode
        pos1 = kwargs.get("pos", [0,0,0])
        p2["pos"] = [pos[0], pos[1], pos[2] + shifts[2]]
        #p2["rotZ"] = 360/12
        objects.extend(ob.oobb_easy(**p2))
    

    return objects

def get_oobb_cube_center(**kwargs):
    kwargs.update({"shape": "cube"})
    new_pos = [kwargs["pos"][0] - kwargs["size"][0]/2, kwargs["pos"][1] - kwargs["size"][1]/2, kwargs["pos"][2]]
    kwargs.update({"pos": new_pos})
    return opsc.opsc_easy(**kwargs)

def get_oobb_circle(**kwargs):
    kwargs.update({"radius": kwargs["diameter"]/2 * ob.gv("osp") - ob.gv("osp_minus")})
    #set the size    
    kwargs.update({"shape": "oobb_cylinder"})
    return oobb.oobb_easy(**kwargs)  


def get_oobb_plate(**kwargs):
    kwargs.update({"width_mm": kwargs["width"] * ob.gv("osp") - ob.gv("osp_minus")})
    kwargs.update({"height_mm": (kwargs["height"] * ob.gv("osp")) - ob.gv("osp_minus")})
    #set the size
    kwargs.update({"size": [kwargs["width_mm"], kwargs["height_mm"], kwargs["depth_mm"]]})

    kwargs.update({"shape": "rounded_rectangle"})
    return opsc.opsc_easy(**kwargs) 
  

import math

def get_oobb_holes(holes="all", **kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    width = kwargs["width"]
    height = kwargs["height"]
    pos = kwargs.get("pos", [0,0,0])
    x = pos[0]
    y = pos[1]
    z = pos[2]
    
    
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
    elif holes == "perimeter_miss_middle":
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        #pos_start = [0,0,0]
        for w in range(0,width):
            for h in range(0,height):
                if w == 0 or w == width-1 or h == 0 or h == height-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    w_test = math.floor(width/2)
                    h_test = math.floor(height/2)
                    if h != h_test and w != w_test:
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
    elif holes == "bottom":
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        #pos_start = [0,0,0]
        for w in range(0,width):
            for h in range(0,height):
                if w == width-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[x,y,0], radius_name="m6", m="" ))
    elif holes == "right":
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        #pos_start = [0,0,0]
        for w in range(0,width):
            for h in range(0,height):
                if h == height-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[x,y,0], radius_name="m6", m="" ))
    elif holes == "left":
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        #pos_start = [0,0,0]
        for w in range(0,width):
            for h in range(0,height):
                if h == 0:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[x,y,0], radius_name="m6", m="" ))                    
    elif holes == "bottom":
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        #pos_start = [0,0,0]
        for w in range(0,width):
            for h in range(0,height):
                if w == width-1:
                    x = pos_start[0] + w*ob.gv("osp")
                    y = pos_start[1] + h*ob.gv("osp")
                    objects.extend(ob.oobb_easy(type="negative", shape="oobb_hole", pos=[x,y,0], radius_name="m6", m="" ))
    elif holes == "circle":
        #find the start point needs to be half the width_mm plus half osp
        pos_start = [x + -(width*ob.gv("osp")/2) + ob.gv("osp")/2, y + -(height*ob.gv("osp")/2) + ob.gv("osp")/2, 0]
        #pos_start = [0,0,0]        
        circle_dif = kwargs.get("circle_dif", 0)
        for w in range(0,width):
            for h in range(0,height):
                x = pos_start[0] + w*ob.gv("osp")
                y = pos_start[1] + h*ob.gv("osp")
                # only include if inside a circle of radius width * ob,gv("osp")/2
                r = ((width*ob.gv("osp")) - circle_dif)/2
                if math.sqrt(x**2 + y**2) <= r:
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

def get_oobb_slot(**kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    w = kwargs["w"]
    for mode in modes:
        radius_name = kwargs.get("radius_name")
        radius = ob.gv(f"hole_radius_{radius_name}",mode)
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

def get_oobb_screw_countersunk(include_nut=True, **kwargs):
    return get_oobb_countersunk(**kwargs)

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
        #p2["rotZ"] = 360/12
        objects.extend(ob.oobb_easy(**p2))
    

    return objects


def get_oobb_screw_socket_cap(include_nut=True, **kwargs):
    objects = []
    modes = ["laser", "3dpr", "true"]
    shifts = []

    for mode in modes:  
        radius = kwargs["radius_name"]      
        # countersink bit
        p2 = copy.deepcopy(kwargs)
        h = ob.gv(f'screw_socket_cap_height_{radius}', mode)
        depth = kwargs["depth"]
        rot = kwargs.get("rotY", 0)        
        if rot == 180:
            shifts = [0,depth,depth]
        else:
            shifts = [0,-depth,-depth]
        
        pos = kwargs.get("pos", [0,0,0])
        pos1 = kwargs.get("pos", [0,0,0])
        p2["pos"] = [pos1[0], pos1[1], pos1[2] + shifts[0]]
        

        
        p2["r"] = ob.gv(f"screw_socket_cap_radius_{radius}", mode)
        p2["h"] = h
        
        p2["shape"] = "cylinder"
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
        ##maybe add a nut level argument later
        p2["shape"] = "oobb_nut"
        p2["inclusion"] = mode
        pos1 = kwargs.get("pos", [0,0,0])
        p2["pos"] = [pos[0], pos[1], pos[2] + shifts[2]]
        #p2["rotZ"] = 360/12
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

def get_oobb_cylinder(**kwargs):

    radius_name = kwargs.get("radius_name", "")

    modes = ["laser", "3dpr", "true"]
    return_value = []
    ## deciding how to define depth either string or name
    try:
        depth = kwargs["depth"]
    except:
        try:
            depth = kwargs["depth_mm"]
        except:
            depth = 250
    ## figuring out z so it is in the middle of the object
    try:
        kwargs["pos"][2] = kwargs["pos"][2] - depth /2
    except:
        try:
            kwargs["z"] = kwargs["z"] - depth /2
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


def get_oobb_nut(loose=False,through=False,**kwargs):
    l_string = ""
    if loose:
        l_string = "loose_"

    modes = ["laser", "3dpr", "true"]
    return_value = []
    for mode in modes:
        if not through:
            kwargs["shape"] = "polyg"
            kwargs["sides"] = 6
            kwargs["inclusion"] = mode
            radius_name = kwargs["radius_name"]
            kwargs.update({"r": ob.gv(f"nut_radius_{l_string}{radius_name}", mode)})
            kwargs.update({"height": ob.gv(f"nut_depth_{l_string}{radius_name}", mode)})
            return_value.append(opsc.opsc_easy(**kwargs))
        else: ## if through
            radius_name = kwargs["radius_name"]
            kwargs["shape"] = "cube"
            kwargs["inclusion"] = mode
            dep =  ob.gv(f"nut_radius_loose_{radius_name}", mode)
            wid = ob.gv(f"nut_depth_loose_{radius_name}", mode) * 2 / 1.154
            hei = 100
            kwargs.update({"pos": [kwargs["pos"][0]-wid/4, kwargs["pos"][1], kwargs["pos"][2]-25]})
            kwargs.update({"size": [wid,hei,dep]})
            return_value.append(opsc.opsc_easy(**kwargs))
    return return_value

def get_oobb_standoff(loose=False,**kwargs):
    l_string = ""
    if loose:
        l_string = "loose_"

    modes = ["laser", "3dpr", "true"]
    return_value = []
    depth = kwargs["depth"]
    for mode in modes:    
        kwargs["shape"] = "polyg"
        kwargs["sides"] = 6
        kwargs["inclusion"] = mode
        radius_name = kwargs["radius_name"]
        kwargs.update({"r": ob.gv(f"nut_radius_{l_string}{radius_name}", mode)})
        kwargs.update({"height": depth})
        return_value.append(opsc.opsc_easy(**kwargs))        
    return return_value

def get_oobb_ziptie(**kwargs):
    modes = ["laser", "3dpr", "true"]
    return_value = []
    clearance = kwargs.get("clearance", False)
    for mode in modes:        
        kwargs["shape"] = "oobb_cube_center"
        kwargs["center"] = True
        kwargs["inclusion"] = mode
        kwargs.update({"size": [ob.gv("ziptie_width", mode), ob.gv("ziptie_height", mode), 100]})
        spacing_zt = 7

        p3 = copy.deepcopy(kwargs)
        p3.update({"pos": [kwargs["pos"][0], kwargs["pos"][1]-spacing_zt/2, kwargs["pos"][2] - 50]})
        return_value.append(ob.oobb_easy(**p3))
        p2 = copy.deepcopy(kwargs)
        p2.update({"pos": [kwargs["pos"][0], kwargs["pos"][1]+spacing_zt/2, kwargs["pos"][2]-50]})
        return_value.append(ob.oobb_easy(**p2))
        if clearance:
            p4 = copy.deepcopy(kwargs)
            p4.update({"pos": [kwargs["pos"][0], kwargs["pos"][1], kwargs["pos"][2]]})
            p4.update({"size": [ob.gv("ziptie_width", mode), ob.gv("ziptie_height", mode)+spacing_zt, 3], "m":""})
            return_value.append(ob.oobb_easy(**p4))
        

    return return_value