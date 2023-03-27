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

    bearing_d["6701"] = {"id":12, "id_e":0, "od":18, "od_e":0.2, "depth":4, "depth_e":0, "inner_holes":1}
    bearing_d["6702"] = {"id":15, "id_e":0, "od":21, "od_e":0.2, "depth":4, "depth_e":0, "inner_holes":1}
    bearing_d["6703"] = {"id":17, "id_e":0, "od":23, "od_e":0.2, "depth":4, "depth_e":0, "inner_holes":1}
    bearing_d["6704"] = {"id":20, "id_e":0, "od":27, "od_e":0.2, "depth":4, "depth_e":-0.4, "inner_holes":1}
    bearing_d["6705"] = {"id":25, "id_e":0, "od":32, "od_e":0.2, "depth":4, "depth_e":0, "inner_holes":1}
    bearing_d["6706"] = {"id":30, "id_e":0, "od":37, "od_e":0.2, "depth":4, "depth_e":0, "inner_holes":1}
    bearing_d["6707"] = {"id":35, "id_e":0, "od":44, "od_e":0.2, "depth":5, "depth_e":0, "inner_holes":1}
    bearing_d["6800"] = {"id":10, "id_e":0, "od":19, "od_e":0.2, "depth":5, "depth_e":0, "inner_holes":1}
    bearing_d["6801"] = {"id":12, "id_e":0, "od":21, "od_e":0.2, "depth":5, "depth_e":0, "inner_holes":1}
    bearing_d["6802"] = {"id":15, "id_e":0, "od":24, "od_e":0.2, "depth":5, "depth_e":0, "inner_holes":1}
    bearing_d["6803"] = {"id":17, "id_e":0, "od":26, "od_e":0.2, "depth":5, "depth_e":0, "inner_holes":1}
    bearing_d["6804"] = {"id":20, "id_e":0, "od":32, "od_e":0.2, "depth":7, "depth_e":0, "inner_holes":0}
    bearing_d["6805"] = {"id":25, "id_e":0, "od":37, "od_e":0.2, "depth":7, "depth_e":0, "inner_holes":0}
    bearing_d["6806"] = {"id":30, "id_e":0, "od":42, "od_e":0.2, "depth":7, "depth_e":0, "inner_holes":0}
    bearing_d["6807"] = {"id":35, "id_e":0, "od":47, "od_e":0.2, "depth":7, "depth_e":0, "inner_holes":3}
    bearing_d["6808"] = {"id":40, "id_e":0, "od":52, "od_e":0.2, "depth":7, "depth_e":0, "inner_holes":3}
    bearing_d["6809"] = {"id":45, "id_e":0, "od":58, "od_e":0.2, "depth":7, "depth_e":0, "inner_holes":3}
    bearing_d["6810"] = {"id":50, "id_e":0, "od":65, "od_e":0.2, "depth":7, "depth_e":0, "inner_holes":3}
    bearing_d["6811"] = {"id":55, "id_e":0, "od":72, "od_e":0.2, "depth":9, "depth_e":0, "inner_holes":3}
    bearing_d["6812"] = {"id":60, "id_e":0, "od":78, "od_e":0.2, "depth":10, "depth_e":0, "inner_holes":4}
    bearing_d["6813"] = {"id":65, "id_e":0, "od":85, "od_e":0.2, "depth":10, "depth_e":0, "inner_holes":4}
    bearing_d["6814"] = {"id":70, "id_e":0, "od":90, "od_e":0.2, "depth":10, "depth_e":0, "inner_holes":4}
    bearing_d["6815"] = {"id":75, "id_e":0, "od":95, "od_e":0.2, "depth":10, "depth_e":0, "inner_holes":4}
    bearing_d["6816"] = {"id":80, "id_e":0, "od":100, "od_e":0.2, "depth":10, "depth_e":0, "inner_holes":5}
    bearing_d["6817"] = {"id":85, "id_e":0, "od":110, "od_e":0.2, "depth":13, "depth_e":0, "inner_holes":5}
    bearing_d["6818"] = {"id":90, "id_e":0, "od":115, "od_e":0.2, "depth":13, "depth_e":0, "inner_holes":5}
    bearing_d["6819"] = {"id":95, "id_e":0, "od":120, "od_e":0.2, "depth":13, "depth_e":0, "inner_holes":5}
    bearing_d["6820"] = {"id":100, "id_e":0, "od":125, "od_e":0.2, "depth":13, "depth_e":0, "inner_holes":0}
    bearing_d["6821"] = {"id":105, "id_e":0, "od":130, "od_e":0.2, "depth":13, "depth_e":0, "inner_holes":0}
    bearing_d["6822"] = {"id":110, "id_e":0, "od":140, "od_e":0.2, "depth":16, "depth_e":0, "inner_holes":0}
    bearing_d["6824"] = {"id":120, "id_e":0, "od":150, "od_e":0.2, "depth":16, "depth_e":0, "inner_holes":0}
    bearing_d["6826"] = {"id":130, "id_e":0, "od":165, "od_e":0.2, "depth":18, "depth_e":0, "inner_holes":0}
    bearing_d["6828"] = {"id":140, "id_e":0, "od":175, "od_e":0.2, "depth":18, "depth_e":0, "inner_holes":0}
    bearing_d["6830"] = {"id":150, "id_e":0, "od":190, "od_e":0.2, "depth":20, "depth_e":0, "inner_holes":0}


    for bn in bearing_d:
        vl[f'bearing_{bn}_id'] = [bearing_d[bn]["id"]/2, bearing_d[bn]["id"]/2, bearing_d[bn]["id"]/2 + bearing_d[bn]["id_e"]]
        vl[f'bearing_{bn}_od'] = [bearing_d[bn]["od"]/2, bearing_d[bn]["od"]/2, bearing_d[bn]["od"]/2 + bearing_d[bn]["od_e"]]
        vl[f'bearing_{bn}_depth'] = [bearing_d[bn]["depth"], bearing_d[bn]["depth"], bearing_d[bn]["depth"] + bearing_d[bn]["depth_e"]]
        vl[f'bearing_{bn}_inner_holes'] = [bearing_d[bn]["inner_holes"], bearing_d[bn]["inner_holes"], bearing_d[bn]["inner_holes"]]

    
    ##### radiuses
    m = {}
    m["1d5"] = 1.6
    m["1d5_3dpr"] = 1.8
    m["2"] = 2
    m["2_3dpr"] = 2.2
    m["2d5"] = 2.5
    m["2d5_3dpr"] = 2.7
    m["3"] = 3
    m["3_3dpr"] = 3.6
    m["4"] = 4
    m["4_3dpr"] = 4.5
    m["5"] = 5
    m["5_3dpr"] = 5.5
    m["6"] = 6
    m["6_3dpr"] = 6.5
    m["8"] = 8
    m["8_3dpr"] = 8.5
    m["10"] = 10
    m["10_3dpr"] = 10.5
    m["12"] = 12
    m["12_3dpr"] = 12.5

    ##### hole variables
    vl["hole_radius_m1d5"] = [m["1d5"]/2, m["1d5"]/2, m["1d5_3dpr"]/2]
    vl["hole_radius_m2"] = [m["2"]/2, m["2"]/2, m["2_3dpr"]/2]
    vl["hole_radius_m2d5"] = [m["2d5"]/2, m["2d5"]/2, m["2d5_3dpr"]/2]
    vl["hole_radius_m3"] = [m["3"]/2, m["3"]/2, m["3_3dpr"]/2]
    vl["hole_radius_m4"] = [m["4"]/2, m["4"]/2, m["4_3dpr"]/2]
    vl["hole_radius_m5"] = [m["5"]/2, m["5"]/2, m["5_3dpr"]/2]
    vl["hole_radius_m6"] = [m["6"]/2, m["6"]/2, m["6_3dpr"]/2]
    vl["hole_radius_m8"] = [m["8"]/2, m["8"]/2, m["8_3dpr"]/2]
    vl["hole_radius_m10"] = [m["10"]/2, m["10"]/2, m["10_3dpr"]/2]
    vl["hole_radius_m12"] = [m["12"]/2, m["12"]/2, m["12_3dpr"]/2]
    vl["hole_radius_little_m6"] = [m["6"]/2, m["6"]/2, m["6_3dpr"]/2-.4]



    # nut variables
    nuts = ["m1d5", "m3", "m6"]

    #normal nuts AND BOLTS
    vl["nut_radius_m1d5"] = [3.2*1.154/2, 3.2*1.154/2, 3.5 * 1.154/2]    
    vl["nut_depth_m1d5"] = [1.3, 1.3, 1.5]

    vl["nut_radius_m2"] = [4*1.154/2, 4*1.154/2, 4.2 * 1.154/2]
    vl["nut_depth_m2"] = [1.6, 1.6, 1.8]    

    vl["nut_radius_m2d5"] = [5*1.154/2, 5*1.154/2, 5.4 * 1.154/2]
    vl["nut_depth_m2d5"] = [1.9, 1.9, 2.1]

    vl["nut_radius_m3"] = [5.5*1.154/2, 5.5*1.154/2, 6 * 1.154/2]
    vl["nut_depth_m3"] = [2.5, 2.5, 3]

    vl["nut_radius_m4"] = [7*1.154/2, 7*1.154/2, 7.4 * 1.154/2]
    vl["nut_depth_m4"] = [3.2, 3.2, 3.5]

    vl["nut_radius_m5"] = [8*1.154/2, 8*1.154/2, 8.4 * 1.154/2]
    vl["bolt_radius_m5"] = vl["nut_radius_m5"]
    vl["bolt_depth_m5"] = [3.5, 3.5, 3.6]
    vl["nut_depth_m5"] = [4, 4, 4.5]

    vl["nut_radius_m6"] = [10*1.154/2, 10*1.154/2, 10.25 * 1.154/2]
    vl["bolt_radius_m6"] = vl["nut_radius_m6"]
    vl["bolt_depth_m6"] = [4, 4, 4.5]
    vl["nut_depth_m6"] = [5, 5, 5.5]

    vl["nut_radius_m8"] = [13*1.154/2, 13*1.154/2, 13.5 * 1.154/2]
    vl["bolt_radius_m8"] = vl["nut_radius_m8"]
    vl["bolt_depth_m8"] = [5.3, 5.3, 5.4]
    vl["nut_depth_m8"] = [6.5, 6.5, 6.8]

    vl["nut_radius_m10"] = [17*1.154/2, 17*1.154/2, 17.5 * 1.154/2]
    vl["bolt_radius_m10"] = vl["nut_radius_m10"]
    vl["bolt_depth_m10"] = [6.4, 6.4, 6.5]
    vl["nut_depth_m10"] = [10, 10, 10.5]

    vl["nut_radius_m12"] = [19*1.154/2, 19*1.154/2, 19.6 * 1.154/2]
    vl["bolt_radius_m12"] = vl["nut_radius_m12"]
    vl["bolt_depth_m12"] = [7.5, 7.5, 7.6]
    vl["nut_depth_m12"] = [10, 10, 10.5]


    #loose nuts
    m1d5_extra_radius = 0.2
    m1d5_extra_depth = 0.1
    vl["nut_radius_loose_m1d5"] = [vl["nut_radius_m1d5"][0] + m1d5_extra_radius, vl["nut_radius_m1d5"][1] + m1d5_extra_radius, vl["nut_radius_m1d5"][2] + m1d5_extra_radius]
    vl["nut_depth_loose_m1d5"] = [vl["nut_depth_m1d5"][0] + m1d5_extra_depth, vl["nut_depth_m1d5"][1] + m1d5_extra_depth, vl["nut_depth_m1d5"][2] + m1d5_extra_depth]
    
    
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
    screws = ["m1d5", "m3", "m6"]

    vl["screw_radius_m1d5"] = m["1d5"]/2, m["1d5"]/2, m["1d5_3dpr"]/2
    vl["screw_countersunk_radius_m1d5"] = [5.8/2, 5.8/2, 7.2/2]    
    vl["screw_countersunk_height_m1d5"] = [1.7/2, 1.7/2, 1.9/2]
    
    vl["screw_radius_m2d5"] = m["2d5"]/2, m["2d5"]/2, m["2d5_3dpr"]/2
    vl["screw_countersunk_radius_m2d5"] = [4.5/2, 4.5/2, 4.9/2]    
    vl["screw_countersunk_height_m2d5"] = [1.5/2, 1.5/2, 1.7/2]

    vl["screw_radius_m3"] = m["3"]/2, m["3"]/2, m["3_3dpr"]/2
    vl["screw_countersunk_radius_m3"] = [4.6/2, 5.8/2, 7.2/2]
    vl["screw_countersunk_height_m3"] = [1.7, 1.7, 1.9]
    vl["screw_socket_cap_radius_m3"] = [5.8/2, 5.8/2, 6/2]
    vl["screw_socket_cap_height_m3"] = [3, 3, 3.2]
    
    vl["screw_radius_m6"] = m["6"]/2, m["6"]/2, m["6_3dpr"]/2
    vl["screw_countersunk_radius_m6"] = [6/2, 6/2, 7.2/2]
    vl["screw_countersunk_height_m6"] = [3.3, 3.3, 3.7]




    for screw in screws:
        vl["screw__countersunk_height_" + screw] = [vl[f'screw_countersunk_radius_{screw}'][0] * 2, vl[f'screw_countersunk_radius_{screw}'][1] * 2, vl[f'screw_countersunk_radius_{screw}'][2] * 2]
        vl["screw__countersunk_width_" + screw] = [vl[f'screw_countersunk_height_{screw}'][0], vl[f'screw_countersunk_height_{screw}'][1], vl[f'screw_countersunk_height_{screw}'][2]]


    # zip tie
    vl["ziptie_height"] = [1.5, 1, 1.5]
    vl["ziptie_width"] = [4, 3, 4]

    for var in vl:
        values = vl[var]
        for i in range(0, len(modes)):
            oobb_base.set_variable(var, values[i], modes[i])
