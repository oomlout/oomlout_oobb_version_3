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
    thing["components"].extend(ob.oobb_easy(type="positive",shape="oobb_nut", radius_name=wid))
    thing["components"].extend(ob.oobb_easy(type="negative",shape="oobb_hole", radius_name=wid,depth=20,z=-10,m=""))


    return thing

def get_screw_countersunk(wid, depth):
    thing = ob.get_default_thing()
    thing.update({"description": f"screw countersunk {wid}x{depth}"})
    thing.update({"id": f"screw_countersunk_{wid}_{depth}"})
    thing.update({"type": "hardware"})
    thing.update({"type_oobb": "screw_countersunk"})
    thing.update({"depth_mm": depth})

    thing.update({"components": []})
    thing["components"].extend(ob.oobb_easy(type="positive",shape="oobb_countersunk", radius_name=wid, depth=depth, include_nut=False))

    return thing


