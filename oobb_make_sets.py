
import oobb_get_items_oobb
import oobb_get_items_other
import oobb_get_items_test  
import oobb_base

def make_all(filter=""):
    #typs = ["bps","jas","mps","pls","nuts","screws_countersunk","tests","zts"]
    typs = ["bps","jas","mps","pls","shs","zts"]
    all_things = []

    for type in typs:
        if filter in type:
            func = globals()["get_"+type]
            all_things.extend(func())
            pass
    
    for thing in all_things:
        func = getattr(oobb_get_items_oobb,"get_"+thing["type"])
        thing = func(**thing)
        oobb_base.add_thing(thing)
        pass


#oobb makes

def get_bps(size="oobb"):
    bps = []
    bps.append({"type":"bp", "width":3,"height":3,"thickness":12,"bearing_type":"6704","size":size})
    bps.append({"type":"bp", "width":3,"height":3,"thickness":12,"bearing_type":"6803","size":size})
    bps.append({"type":"bp", "width":3,"height":3,"thickness":15,"bearing_type":"6804","size":size})
    bps.append({"type":"bp", "width":5,"height":5,"thickness":12,"bearing_type":"6808","size":size})

    
    return bps

def get_jas(size="oobb"):
    jas = []
    for wid in range(3,10):  
        jas.append({"type":"ja","width":wid, "height":1, "thickness":12,"size":size})
        
    jas.append({"type":"ja","width":3, "height":2, "thickness":12,"size":size})
    jas.append({"type":"ja","width":5, "height":2, "thickness":12,"size":size})
    jas.append({"type":"ja","width":3, "height":3, "thickness":12,"size":size})
    
    return jas

def get_mps(size="oobb"):
    mounting_plates = []
    # bigtree octopur driver board
    mounting_plates.append({"type":"mp", "width":13,"height":9,"thickness":3,"width_mounting":150,"height_mounting":90,"radius_hole":"m3", "name":"bigtreetech_octopus","size":size})
    
    #e3d titan extruder
    mounting_plates.append({"type":"mpu", "width":6,"height":3,"thickness":3,"width_mounting":54,"height_mounting":15,"radius_hole":"m4", "name":"e3d_extruder_titan","size":size})
    mounting_plates.append({"type":"mps", "width":5,"height":3,"thickness":3,"width_mounting":54,"height_mounting":15,"radius_hole":"m4", "name":"e3d_extruder_titan","size":size})
    mounting_plates.append({"type":"mpt", "width":6,"height":2,"thickness":3,"width_mounting":54,"height_mounting":15,"radius_hole":"m4", "name":"e3d_extruder_titan","size":size})
    

    # aliexpress motor controller
    mounting_plates.append({"type":"mp", "width":4,"height":4,"thickness":3,"width_mounting":26,"height_mounting":26,"radius_hole":"m3", "name":"aliexpress_motor_controller_speed","size":size})
    mounting_plates.append({"type":"mpu", "width":3,"height":3,"thickness":3,"width_mounting":26,"height_mounting":26,"radius_hole":"m3", "name":"aliexpress_motor_controller_speed","size":size})
    mounting_plates.append({"type":"mps", "width":3,"height":3,"thickness":3,"width_mounting":26,"height_mounting":26,"radius_hole":"m3", "name":"aliexpress_motor_controller_speed","size":size})    

    return mounting_plates

def get_pls(size="oobb"):
    plates = []
    for wid in range(1,7):
        for hei in range(1,7):
            if wid >= hei:
                plates.append({"type":"pl", "width":wid,"height":hei,"thickness":3,"size":size})
    
    plates.append({"type":"pl", "width":1,"height":1,"thickness":6,"size":size})
    plates.append({"type":"pl", "width":1,"height":1,"thickness":9,"size":size})
    plates.append({"type":"pl", "width":1,"height":1,"thickness":12,"size":size})
    
    for len in range(2,35):
        plates.append({"type":"pl", "width":len,"height":1,"thickness":3,"size":size})
        
    plates.append({"type":"pl", "width":7,"height":3,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":8,"height":3,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":9,"height":3,"thickness":3,"size":size})

    plates.append({"type":"pl", "width":7,"height":5,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":8,"height":5,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":9,"height":5,"thickness":3,"size":size})

    plates.append({"type":"pl", "width":12,"height":12,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":13,"height":13,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":14,"height":14,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":15,"height":15,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":20,"height":20,"thickness":3,"size":size})
    
    # larger plates of desire
    plates.append({"type":"pl", "width":15,"height":9,"thickness":3,"size":size})
    
    #extra fives
    plates.append({"type":"pl", "width":15,"height":5,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":14,"height":5,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":13,"height":5,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":12,"height":5,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":11,"height":5,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":10,"height":5,"thickness":3,"size":size})

    #extra fifteens
    plates.append({"type":"pl", "width":15,"height":14,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":15,"height":13,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":15,"height":12,"thickness":3,"size":size})
    plates.append({"type":"pl", "width":15,"height":11,"thickness":3,"size":size})

    plates.append({"type":"pl", "width":28,"height":20,"thickness":3,"size":size,"name":"oobb_pl_a3"})
    plates.append({"type":"pl", "width":20,"height":14,"thickness":3,"size":size,"name":"oobb_pl_a4"})
    plates.append({"type":"pl", "width":14,"height":10,"thickness":3,"size":size,"name":"oobb_pl_a5"})
    plates.append({"type":"pl", "width":10,"height":7,"thickness":3,"size":size,"name":"oobb_pl_a6"})

    return plates

def get_shs(size="oobb"):
    shafts = []
    shafts.append({"type":"sh", "thickness":0,"size":size})
    shafts.append({"type":"sh", "thickness":0.5,"size":size})
    shafts.append({"type":"sh", "thickness":1,"size":size})
    shafts.append({"type":"sh", "thickness":3,"size":size})
    shafts.append({"type":"sh", "thickness":3.5,"size":size})
    
    shafts.append({"type":"sh", "thickness":4,"size":size})
    shafts.append({"type":"sh", "thickness":6,"size":size})
    shafts.append({"type":"sh", "thickness":9,"size":size})
    shafts.append({"type":"sh", "thickness":12,"size":size})
    shafts.append({"type":"sh", "thickness":15,"size":size})
    
    return shafts

def get_zts(size="oobb"):

    zts = []

    zts.append({"type":"ztj", "width":1,"thickness":12,"size":size})
    zts.append({"type":"ztj", "width":1,"height":2,"thickness":12,"size":size})
    zts.append({"type":"ztj", "width":2,"thickness":12,"size":size})
    zts.append({"type":"ztj", "width":2,"height":2,"thickness":12,"size":size})
    zts.append({"type":"ztj", "width":2,"height":3,"thickness":12,"size":size})
    zts.append({"type":"ztj", "width":3,"thickness":12,"size":size})

    zts.append({"type":"zt", "width":2,"height":3,"thickness":6,"size":size})
    zts.append({"type":"zt", "width":2,"height":4,"thickness":6,"size":size})
    zts.append({"type":"zt", "width":2,"height":5,"thickness":6,"size":size})

    return zts
    
#other makes

def get_nuts():
    nuts = ["m3","m6"]
    for nut in nuts:
        thing = oobb_get_items_other.get_nut(nut)
        oobb_base.add_thing(thing)

def get_screws_countersunk():
    screws = ["m3"]
    depths = [8,10,12,16,18,20,25,30,35,40]
    for screw in screws:
        for depth in depths:
            thing = oobb_get_items_other.get_screw_countersunk(screw,depth)
            oobb_base.add_thing(thing)

def get_tests():
    
    things = []
    things.append(oobb_get_items_test.get_test_nut("m3", difference=0.15))
    things.append(oobb_get_items_test.get_test_nut("m3", difference=0.15, test="depth"))
    things.append(oobb_get_items_test.get_test_nut("m6", depth = 8, difference = 0.2))
    things.append(oobb_get_items_test.get_test_nut("m6", test="depth", difference = 0.5, depth = 8))
    


    for thing in things:
        oobb_base.add_thing(thing)            
