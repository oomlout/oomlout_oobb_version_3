from oobb_get_items_base import *
import oobb_base as ob

def get_nut_m3():
    nut = get_nut(3)
    return nut

def get_nut(wid): 
    width = ob.gv(f"nut_radius_{wid}_true")
    depth = ob.gv(f"nut_depth_{wid}_true")

    thing = ob.get_default_thing()   
    thing.update({"description": f"nut {wid}"})
    thing.update({"id": f"nut_{wid}"})
    thing.update({"type": "hardware"})
    thing.update({"type_oobb": "nut"})
    thing.update({"width_mm": width})
    thing.update({"depth_mm": depth})
    thing.update({"height_mm": width/1.154})
    
    thing.update({"components": []})
    th = thing["components"]
    th.extend(ob.oe(t="p",s="oobb_nut", rn=wid))
    th.extend(ob.oe(t="n",s="oobb_hole", rn=wid,depth=20,z=-10,m=""))


    return thing

def get_screw_countersunk(wid, depth):
    thing = ob.get_default_thing()
    thing.update({"description": f"screw countersunk {wid}x{depth}"})
    thing.update({"id": f"screw_countersunk_{wid}_{str(depth).zfill(2)}"})
    thing.update({"type": "hardware"})
    thing.update({"type_oobb": "screw_countersunk"})
    thing.update({"depth_mm": depth})

    thing.update({"components": []})
    thing["components"].extend(ob.oe(t="positive",s="oobb_countersunk", rn=wid, depth=depth, include_nut=False))

    return thing

def get_test_nut(size):
    # switch to making it a test for variable take variable and shape 
    # add tight and loose tolerances
    width = ob.gv("osp") * 3 - ob.gv("osp_minus")
    height = ob.gv("osp") * 3 - ob.gv("osp_minus")
    depth = 3

    thing = ob.get_default_thing()
    thing.update({"description": f"test nut {size}"})
    thing.update({"id": f"test_nut_{size}"})
    thing.update({"type": "hardware"})
    thing.update({"type_oobb": "test_nut"})
    thing.update({"width_mm": size})
    thing.update({"height_mm": size})
    thing.update({"depth_mm": size})

    thing.update({"components": []})
    thing["components"].extend(ob.oobb_easy(type="positive",shape="oobb_plate", width=width, height=height, depth=depth))

    num_test=5
    test_dif = 0.1
    test_spacing = 7
    test_variable = "nut_radius_m3"    
    for i in range(0, num_test):
        pass



    return thing


