import oobb
from oobb_get_items_base import *

import os
import json

##### base functions
def get_default_thing():
    thing = {}
    thing.update({"description": ""})
    thing.update({"id": ""})

    thing.update({"type": ""})
    thing.update({"type_oobb": ""})
    
    thing.update({"width_mm": 0})
    thing.update({"width_oobb": 0})
    thing.update({"height_mm": 0})
    thing.update({"height_oobb": 0})

    thing.update({"components": []})


    return thing


def set_variable(name, value, mode=""):
    if mode != "":
        name = name + "_" + mode
    oobb.variables.update({name: value})

def gv(name, mode=""):
    return get_variable(name, mode)    

def get_variable(name, mode=""):
    if mode != "":
        name = name + "_" + mode
    return oobb.variables[name]

def add_thing(thing):
    oobb.things.update({thing["id"]: thing})

def dump(mode="json"):
    if mode == "json":
        with open('things.json', 'w') as outfile:
            json.dump(oobb.things, outfile)
        with open('variables.json', 'w') as outfile:
            json.dump(oobb.variables, outfile)
    elif mode == "folder":
        for thing in oobb.things:
            filename = f'things/{thing}/details.json'
            if not os.path.exists(os.path.dirname(filename)):
                    os.makedirs(os.path.dirname(filename))
            with open(filename, 'w') as outfile:                
                json.dump(oobb.things[thing], outfile, indent=4)

def load(mode="json"):
    if mode == "json":
        with open('things.json') as json_file:
            oobb.things = json.load(json_file)
        with open('variables.json') as json_file:
            variables = json.load(json_file)
    elif mode == "folder":
        ##load all the details.json files from the fodlers in things directory
        for thing in os.listdir("things"):
            try: 
                with open(f'things/{thing}/details.json') as json_file:
                    oobb.things.update({thing: json.load(json_file)})
            except FileNotFoundError:                
                pass
            
        
def build_things(save_type = "none", overwrite = True, filter = ""):
    for thing in oobb.things:
        if filter in thing:
            print(f'building {thing}')
            build_thing(thing, save_type, overwrite)



def build_thing(thing, save_type = "all",overwrite = True):
    modes = ["3dpr", "laser", "true"]
    for mode in modes:
        depth = oobb.things[thing].get("depth_mm",3)
        height = oobb.things[thing].get("height_mm",100)
        layers = depth / 3
        tilediff = height + 10
        start=1.5
        if layers != 1:
            start = 1.5 - (layers / 2)*3
        opsc.opsc_make_object(f'things/{thing}/{mode}.scad', oobb.things[thing]["components"], mode=mode,save_type=save_type, overwrite=overwrite, layers=layers, tilediff=tilediff, start=start)

def oe(**kwargs):
    return oobb_easy(**kwargs)

def oobb_easy(**kwargs):
    try:
        kwargs["type"] = kwargs["t"]
        del kwargs["t"]
    except KeyError:
        pass
    try:
        kwargs["shape"] = kwargs["s"]
        del kwargs["s"]
    except KeyError:
        pass
    try:
        kwargs["radius_name"] = kwargs["rn"]
        del kwargs["rn"]
    except KeyError:
        pass
    

    if "oobb" in kwargs["shape"]:
        # if its an oobb_plat then call get_oobb_plate
        shape = kwargs["shape"]
        if shape == "oobb_pl":
            return_value = []
            return_value.append(get_oobb_plate(**kwargs))
            return_value.extend(get_oobb_holes(**kwargs))
            return return_value
        else:
            # Call the function dynamically using its string name
            func = globals()[f'get_{shape}']
            return func(**kwargs)
    else:
        return opsc.opsc_easy(**kwargs)

def oobb_easy_array(**kwargs):    
    for i in range(0,3):
        kwargs["repeats"].append(1)
        kwargs["pos_start"].append(0)
        kwargs["shift_arr"].append(0)        
    return_objects = []

    repeats = kwargs["repeats"]
    for x in range(0,repeats[0]):
        for y in range(0,repeats[1]):
            for z in range(0,repeats[2]):
                pos = [0,0,0]
                pos[0] = kwargs["pos_start"][0]+x*kwargs["shift_arr"][0]
                pos[1] = kwargs["pos_start"][1]+y*kwargs["shift_arr"][1]
                pos[2] = kwargs["pos_start"][2]+z*kwargs["shift_arr"][2]
                kwargs.update({"pos": pos})
                return_objects.append(oobb_easy(**kwargs))
    return return_objects 
