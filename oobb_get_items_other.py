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




