import oobb
import oobb_base

def initialize_variables():
    modes = ["laser", "true", "3dpr"]
    var_load = {}
    # base variables
    oobb_base.set_variable("osp", 15)
    oobb_base.set_variable("osp_minus", 1)
    oobb_base.set_variable("osp_hole", "m6")

    # radiuses
    m = {}
    m["3"] = 3
    m["3_3dpr"] = 3.4
    m["6"] = 6
    m["6_3dpr"] = 6.5

    # hole variables
    var_load["hole_radius_m3"] = [m["3"]/2, m["3"]/2, m["3_3dpr"]/2]
    var_load["hole_radius_m6"] = [m["6"]/2, m["6"]/2, m["6_3dpr"]/2]

    # nut variables
    var_load["nut_radius_m3"] = [5.5*1.154/2, 5.5*1.154/2, 6.75 * 1.154/2]
    var_load["nut_depth_m3"] = [2.5, 2.5, 3]
    var_load["nut_radius_m6"] = [10*1.154/2, 10*1.154/2, 11 * 1.154/2]
    var_load["nut_depth_m6"] = [6, 6, 6.5]
    
    # screw variables
    var_load["screw_radius_m3"] = m["3"]/2, m["3"]/2, m["3_3dpr"]/2
    var_load["screw_countersunk_radius_m3"] = [5.8/2, 5.8/2, 7.2/2]
    var_load["screw_countersunk_height_m3"] = [1.7, 1.7, 1.9]

    for var in var_load:
        values = var_load[var]
        for i in range(0, len(modes)):
            oobb_base.set_variable(var, values[i], modes[i])
