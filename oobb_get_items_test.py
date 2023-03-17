from oobb_get_items_base import *
import oobb_base as ob

def get_test_nut(size, depth=4.5, test="radius", difference=0.1, loose=False, **kwargs):
    shape = f"oobb_nut"
    radius_name = size
    name_variable = f"nut_{test}_{size}"
    switch_portion = test
    
    wid = 3
    hei = 3
    return get_test(name_variable, switch_portion, difference, wid, hei, radius_name=radius_name, depth=depth, shape=shape, loose=loose, **kwargs)

import copy

def get_test(name_variable, switch_portion, difference, wid, hei,**kwargs):
    pass
    padding = 7
    wid_mm = ob.gv(name_variable.replace(switch_portion,"width"),"true")
    hei_mm = ob.gv(name_variable.replace(switch_portion,"height"),"true")
    wid_tot_mm = (wid_mm + padding) * wid
    hei_tot_mm = (hei_mm + padding) * hei
    depth_mm = 3
    
    # switch to making it a test for variable take variable and shape 
    # add tight and loose tolerances
    
    try:
        depth = kwargs["depth"]
    except:
        depth = 3

    thing = ob.get_default_thing()
    shape = kwargs["shape"]
    #thing.update({"description": f"test {shape} with variable {name_variable}  portion {switch_portion} difference {difference}"})
    thing.update({"id": f"test_{shape}_{name_variable}_{switch_portion}_{str(difference).replace('.','d')}"})
    thing.update({"type": "test"})
    thing.update({"type_oobb": "test"})
    thing.update({"width_mm": wid_tot_mm})
    thing.update({"height_mm": hei_tot_mm})
    thing.update({"depth_mm": depth})

    thing.update({"components": []})

    #base shape
    thing["components"].append(ob.oobb_easy(type="positive",shape="rounded_rectangle", size=[wid_tot_mm,hei_tot_mm,depth]))
    

    total_iterations = 0

    start_x = -wid_tot_mm/2 + (wid_mm+padding)/2
    start_y = -hei_tot_mm/2 + (hei_mm+padding)/2
    sizes = ""
    for w in range(wid):
        for h in range(hei):
            x = start_x + w * (wid_mm + padding)
            y = start_y + h * (hei_mm + padding)
            total_iterations += 1
            kwargs["x"] = x
            kwargs["y"] = y
            kwargs["name_variable"] = name_variable
            dif = (((wid * hei)+1)/2 * -difference) + (total_iterations) * difference
            
            kwargs["difference"] = dif
            kwargs["m"] = "#"
            rv = get_test_item(**kwargs)
            sizes += f"total_itterations: {total_iterations} size: {rv[1]}\n"
            thing["components"].extend(rv[0])
            if total_iterations == 1 or total_iterations == 2:
                p2 = copy.deepcopy(kwargs)
                p2["shape"] = "oobb_hole"
                p2["radius_name"] = "m3"
                p2["type"] = "n"
                p2["m"]= ""
                thing["components"].extend(ob.oobb_easy(**p2))
                
                
            
    thing.update({"description": f"test {shape} with variable {name_variable}  portion {switch_portion} difference {difference} \n sizes \n{sizes}"})


    return thing


def get_test_item(name_variable,difference, **kwargs):
    new_value =[]
    kwargs["type"] = "negative"
    modes = ["laser", "true", "3dpr"]
    orig_value = {}
    for mode in modes:
        orig_value[mode] = ob.gv(name_variable, mode)    
        nv = orig_value[mode] + difference
        ob.set_variable(name_variable, nv, mode)
        new_value.append(nv)
    obj = ob.oobb_easy(**kwargs)
    for mode in modes:
        ob.set_variable(name_variable, orig_value[mode], mode)

    return obj, new_value
