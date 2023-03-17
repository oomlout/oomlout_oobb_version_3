import oobb
import oobb_base

def initialize_variables():
    modes = ["laser", "true", "3dpr"]
    vl = {}
    # base variables
    oobb_base.set_variable("osp", 15)
    oobb_base.set_variable("osp_minus", 1)
    oobb_base.set_variable("osp_hole", "m6")
    oobb_base.set_variable("ospe", 15/2)
    oobb_base.set_variable("ospe_minus", 1/2)
    oobb_base.set_variable("ospe_hole", "m3")

    # radiuses
    m = {}
    m["15d"] = 1.6
    m["15d_3dpr"] = 1.8
    m["3"] = 3
    m["3_3dpr"] = 3.4
    m["6"] = 6
    m["6_3dpr"] = 6.5

    # hole variables
    vl["hole_radius_m15d"] = [m["15d"]/2, m["15d"]/2, m["15d_3dpr"]/2]
    vl["hole_radius_m3"] = [m["3"]/2, m["3"]/2, m["3_3dpr"]/2]
    vl["hole_radius_m6"] = [m["6"]/2, m["6"]/2, m["6_3dpr"]/2]

    # nut variables
    nuts = ["m15d", "m3", "m6"]

    #normal nuts
    vl["nut_radius_m15d"] = [3.2*1.154/2, 3.2*1.154/2, 3.5 * 1.154/2]    
    vl["nut_depth_m15d"] = [1.3, 1.3, 1.5]
    vl["nut_radius_m3"] = [5.5*1.154/2, 5.5*1.154/2, 5.8 * 1.154/2]
    vl["nut_depth_m3"] = [2.5, 2.5, 3]
    vl["nut_radius_m6"] = [10*1.154/2, 10*1.154/2, 10.25 * 1.154/2]
    vl["nut_depth_m6"] = [5, 5, 5.5]

    #loose nuts
    m15d_extra_radius = 0.2
    m15d_extra_depth = 0.1
    vl["nut_radius_loose_m15d"] = [vl["nut_radius_m15d"][0] + m15d_extra_radius, vl["nut_radius_m15d"][1] + m15d_extra_radius, vl["nut_radius_m15d"][2] + m15d_extra_radius]
    vl["nut_depth_loose_m15d"] = [vl["nut_depth_m15d"][0] + m15d_extra_depth, vl["nut_depth_m15d"][1] + m15d_extra_depth, vl["nut_depth_m15d"][2] + m15d_extra_depth]
    
    
    m3_extra_radius = 0.1
    m3_extra_depth = 0.1
    vl["nut_radius_loose_m3"] = [vl["nut_radius_m3"][0] + m3_extra_radius, vl["nut_radius_m3"][1] + m3_extra_radius, vl["nut_radius_m3"][2] + m3_extra_radius]    
    vl["nut_depth_loose_m3"] = [vl["nut_depth_m3"][0] + m3_extra_depth, vl["nut_depth_m3"][1] + m3_extra_depth, vl["nut_depth_m3"][2] + m3_extra_depth]

    m6_extra_radius = 0.4
    m6_extra_depth = 0.4
    vl["nut_radius_loose_m6"] = [vl["nut_radius_m6"][0] + m6_extra_radius, vl["nut_radius_m6"][1] + m6_extra_radius, vl["nut_radius_m6"][2] + m6_extra_radius]
    vl["nut_depth_loose_m6"] = [vl["nut_depth_m6"][0] + m6_extra_depth, vl["nut_depth_m6"][1] + m6_extra_depth, vl["nut_depth_m6"][2] + m6_extra_depth]
    

    
    for nut in nuts:
        vl["nut_width_" + nut] = [vl[f'nut_radius_{nut}'][0] * 2, vl[f'nut_radius_{nut}'][1] * 2, vl[f'nut_radius_{nut}'][2] * 2]
        vl["nut_height_" + nut] = [vl[f'nut_depth_{nut}'][0] * 2 / 1.154, vl[f'nut_depth_{nut}'][1] * 2  / 1.154, vl[f'nut_depth_{nut}'][2] * 2  / 1.154]

    # screw variables
    screws = ["m15d", "m3", "m6"]

    vl["screw_radius_m15d"] = m["15d"]/2, m["15d"]/2, m["15d_3dpr"]/2
    vl["screw_countersunk_radius_m15d"] = [5.8/2/2, 5.8/2/2, 7.2/2/2]
    vl["screw_countersunk_height_m15d"] = [1.7/2, 1.7/2, 1.9/2]
    vl["screw_radius_m3"] = m["3"]/2, m["3"]/2, m["3_3dpr"]/2
    vl["screw_countersunk_radius_m3"] = [5.8/2, 5.8/2, 7.2/2]
    vl["screw_countersunk_height_m3"] = [1.7, 1.7, 1.9]
    vl["screw_radius_m6"] = m["6"]/2, m["6"]/2, m["6_3dpr"]/2
    vl["screw_countersunk_radius_m6"] = [6/2, 6/2, 7.2/2]
    vl["screw_countersunk_height_m6"] = [3.3, 3.3, 3.7]

    for screw in screws:
        vl["screw__countersunk_height_" + screw] = [vl[f'screw_countersunk_radius_{screw}'][0] * 2, vl[f'screw_countersunk_radius_{screw}'][1] * 2, vl[f'screw_countersunk_radius_{screw}'][2] * 2]
        vl["screw__countersunk_width_" + screw] = [vl[f'screw_countersunk_height_{screw}'][0], vl[f'screw_countersunk_height_{screw}'][1], vl[f'screw_countersunk_height_{screw}'][2]]




    for var in vl:
        values = vl[var]
        for i in range(0, len(modes)):
            oobb_base.set_variable(var, values[i], modes[i])
