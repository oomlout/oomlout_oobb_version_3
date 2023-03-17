
import oobb_get_items_oobb
import oobb_get_items_other
import oobb_get_items_test  
import oobb_base

def make_all():
    make_jacks()
    make_jacks(size = "oobe")
    make_plates()   
    make_plates(size = "oobe")   
    make_nuts()
    make_screws_countersunk()
    make_tests()
    make_mounting_plates()

#oobb makes

def make_jacks(overwrite=True, size="oobb"):
    jacks = []
    for wid in range(3,10):        
                jacks.append([wid,1,12])
    jacks.append([3,2,12])
    jacks.append([5,2,12])
    jacks.append([3,3,12])

    for jack in jacks:
        thing = oobb_get_items_oobb.get_ja(jack[0],jack[1],jack[2],size,overwrite)
        oobb_base.add_thing(thing)

def make_mounting_plates(overwrite=True, size="oobb"):
    mounting_plates = []
    mounting_plates.append([13,9,3,150,90,"m3"])
    mounting_plates.append([6,5,3,54,30,"m3"])
    mounting_plates.append([4,4,3,26,26,"m3"])

    for mounting_plate in mounting_plates:
        thing = oobb_get_items_oobb.get_mp(width=mounting_plate[0],height=mounting_plate[1],thickness=mounting_plate[2],hole_width=mounting_plate[3],hole_height=mounting_plate[4],hole_type=mounting_plate[5],overwrite=overwrite)
        oobb_base.add_thing(thing)

def make_plates(overwrite=True, size="oobb"):
    plates = []
    for wid in range(1,7):
        for hei in range(1,7):
            if wid >= hei:
                plates.append([wid,hei,3])
    
    plates.append([1,1,6])    
    plates.append([1,1,9])    
    plates.append([1,1,12])   

    for len in range(2,35):
        plates.append([len,1,3])
        
    plates.append([7,3,3])    
    plates.append([8,3,3])    
    plates.append([9,3,3])    
    
    plates.append([7,5,3])    
    plates.append([8,5,3])    
    plates.append([9,5,3])    

    plates.append([12,12,3])    
    plates.append([14,14,3])   
    plates.append([15,15,3])     
    plates.append([20,20,3])   
    
    # larger plates of desire
    plates.append([15,9,3]) 
    
    #extra fives
    plates.append([15,5,3])
    plates.append([14,5,3])
    plates.append([13,5,3])
    plates.append([12,5,3])
    plates.append([11,5,3])
    plates.append([10,5,3])

    #extra fifteens
    plates.append([15,14,3])
    plates.append([15,13,3])
    plates.append([15,12,3])
    plates.append([15,11,3])

    for plate in plates:
        thing = oobb_get_items_oobb.get_pl(plate[0],plate[1],plate[2],size=size)
        oobb_base.add_thing(thing)

#other makes

def make_nuts():
    nuts = ["m3","m6"]
    for nut in nuts:
        thing = oobb_get_items_other.get_nut(nut)
        oobb_base.add_thing(thing)

def make_screws_countersunk():
    screws = ["m3"]
    depths = [8,10,12,16,18,20,25,30,35,40]
    for screw in screws:
        for depth in depths:
            thing = oobb_get_items_other.get_screw_countersunk(screw,depth)
            oobb_base.add_thing(thing)

def make_tests():
    things = []
    #things.append(oobb_get_items_test.get_test_nut("m3"))
    #things.append(oobb_get_items_test.get_test_nut("m3", test="depth"))
    things.append(oobb_get_items_test.get_test_nut("m6", depth = 8, difference = 0.2))
    things.append(oobb_get_items_test.get_test_nut("m6", test="depth", difference = 0.5, depth = 8))
    


    for thing in things:
        oobb_base.add_thing(thing)            