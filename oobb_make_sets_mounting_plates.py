import copy

def get_mounting_plates(size="oobb"):
    mounting_plates = []
    mounting_plates.extend(get_mounting_plates_aliexpress())
    mounting_plates.extend(get_mounting_plates_bigtreetech())
    mounting_plates.extend(get_mounting_plates_dangerousprototypes())
    mounting_plates.extend(get_mounting_plates_electrolama())

    return mounting_plates

def get_mounting_plates_aliexpress(size="oobb"):
    mounting_plates = []
    # company : aliexpress 
    #       motor controller
    pl = {"type": "mounting_plate", 
          "name": "aliexpress_motor_controller_speed", 
          "width": 4, 
          "height": 4, 
          "thickness": 3, 
          "width_mounting": 26,
          "height_mounting": 26, 
          "radius_hole": "m3", 
          "size": size}
    mounting_plates.append(pl)
    pl = copy.deepcopy(pl)
    pl["type"] = "mounting_plate_u"
    mounting_plates.append(pl)
    pl = copy.deepcopy(pl)
    pl["type"] = "mounting_plate_side"
    mounting_plates.append(pl)

    return mounting_plates

def get_mounting_plates_bigtreetech(size="oobb"):
    mounting_plates = []
    # company : bigtree 
    #       octopus driver board
    pl = { "type": "mounting_plate",
          "name": "bigtreetech_octopus", 
          "width": 13, 
          "height": 9, 
          "thickness": 3, 
          "width_mounting": 150,
          "height_mounting": 90, 
          "radius_hole": "m3", 
          "size": size}
    mounting_plates.append(pl)
    
    return mounting_plates
    
def get_mounting_plates_dangerousprototypes(size="oobb"):
    mounting_plates = []
    # company : dangerousprototypes
    #      bus pirate 5
    pl = { "type": "mounting_plate",
            "name": "dangerousprototypes_bus_pirate_version_5",
            "width": 6,
            "height": 6,
            "thickness": 3,
            "width_mounting": 52,
            "height_mounting": 52,
            "radius_hole": "m3",
            "size": size}
    mounting_plates.append(pl)
    pl3 = copy.deepcopy(pl)
    pl3["type"] = "mounting_plate_top"
    pl3["width"] = pl3["width"]-1
    mounting_plates.append(pl3)

    return mounting_plates

def get_mounting_plates_electrolama(size="oobb"):
    mounting_plates = []
    # electrolama
    #      hub
    mounting_holes = []
    mounting_holes.append({"x": -32.5, "y": 10})
    mounting_holes.append({"x": 31.5, "y": 10})
    mounting_holes.append({"x": -24.5, "y": -10})
    mounting_holes.append({"x": 31.5, "y": -10})
    mounting_plates.append({"type": "mounting_plate", "width": 7, "height": 4, "thickness": 3, "mounting_holes": mounting_holes, "radius_hole": "m3", "name": "electrolama_basic_hub", "size": size})
    

    return mounting_plates
