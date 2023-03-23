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

    # bearing variables
    bearing_d = {}
    
    # experience
    #   15 prints as 15 id
    #   27 prints as 26.8 od  01 too big
    #   25.6 prints as 25.4 od 02 too small

    bearing_d["6704"] = {"id":20, "id_e":0, "od":27, "od_e":0.2, "depth":4, "depth_e":0, "inner_holes":1}

    bearing_d["6803"] = {"id":17, "id_e":0, "od":26, "od_e":0.2, "depth":5, "depth_e":0.5, "inner_holes":1}
    bearing_d["6804"] = {"id":20, "id_e":0, "od":32, "od_e":0.2, "depth":7, "depth_e":0.5, "inner_holes":1}
    bearing_d["6808"] = {"id":40, "id_e":0, "od":52, "od_e":0.2, "depth":7, "depth_e":0.5, "inner_holes":3}

    for bn in bearing_d:
        vl[f'bearing_{bn}_id'] = [bearing_d[bn]["id"]/2, bearing_d[bn]["id"]/2, bearing_d[bn]["id"]/2 + bearing_d[bn]["id_e"]]
        vl[f'bearing_{bn}_od'] = [bearing_d[bn]["od"]/2, bearing_d[bn]["od"]/2, bearing_d[bn]["od"]/2 + bearing_d[bn]["od_e"]]
        vl[f'bearing_{bn}_depth'] = [bearing_d[bn]["depth"], bearing_d[bn]["depth"], bearing_d[bn]["depth"] + bearing_d[bn]["depth_e"]]
        vl[f'bearing_{bn}_inner_holes'] = [bearing_d[bn]["inner_holes"], bearing_d[bn]["inner_holes"], bearing_d[bn]["inner_holes"]]

    
    ##### radiuses
    m = {}
    m["15d"] = 1.6
    m["15d_3dpr"] = 1.8
    m["3"] = 3
    m["3_3dpr"] = 3.4
    m["4"] = 4
    m["4_3dpr"] = 4.5
    m["5"] = 5
    m["5_3dpr"] = 5.5
    m["6"] = 6
    m["6_3dpr"] = 6.5

    ##### hole variables
    vl["hole_radius_m15d"] = [m["15d"]/2, m["15d"]/2, m["15d_3dpr"]/2]
    vl["hole_radius_m3"] = [m["3"]/2, m["3"]/2, m["3_3dpr"]/2]
    vl["hole_radius_m4"] = [m["4"]/2, m["4"]/2, m["4_3dpr"]/2]
    vl["hole_radius_m5"] = [m["5"]/2, m["5"]/2, m["5_3dpr"]/2]
    vl["hole_radius_m6"] = [m["6"]/2, m["6"]/2, m["6_3dpr"]/2]
    vl["hole_radius_little_m6"] = [m["6"]/2, m["6"]/2, m["6_3dpr"]/2-.2]



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


    # zip tie
    vl["ziptie_height"] = [2.5, 1, 2.5]
    vl["ziptie_width"] = [5, 3, 5]

    for var in vl:
        values = vl[var]
        for i in range(0, len(modes)):
            oobb_base.set_variable(var, values[i], modes[i])
