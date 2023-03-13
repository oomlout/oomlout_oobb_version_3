
import oobb_get_items_oobb
import oobb_get_items_other
import oobb_base

def make_all():
    make_jacks()
    make_plates()   
    make_nuts()

#oobb makes

def make_jacks(overwrite=True):
    jacks = []
    for wid in range(3,10):        
                jacks.append([wid,1,12])
    jacks.append([3,2,12])
    jacks.append([5,2,12])
    jacks.append([3,3,12])

    for jack in jacks:
        thing = oobb_get_items_oobb.get_ja(jack[0],jack[1],jack[2],overwrite)
        oobb_base.add_thing(thing)

def make_plates(overwrite=True):
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
        thing = oobb_get_items_oobb.get_pl(plate[0],plate[1],plate[2])
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