import oobb
import oobb_base
import oobb_make_sets
import oomB
import oobb_markdown
import oobb_dxf_laser_copy
import copy
import opsc



#filt = ""
filt = "holder"
#filt = "bearing_plate"
#filt = "mounting_plate"
#filt = ["bp","wh","bc"]
#filt=""
filts = copy.deepcopy(filt)
#add s to the end of every string in filt if its an array otherwise just add an s to the end
if type(filts) == list:
    filts = [f"{f}s" for f in filts]
else:
    filts = f"{filts}s"


oobb_make_sets.make_all(filter=filts)

#oobb_base.dump("json")
#oobb_base.dump("folder")

# oobb_base.load("folder")
# oobb_bas-e.load("json")
 

save_type = "none"
#save_type = "laser"
save_type = "all"

filter = ""
filter = "" 
#filter = "smd_magazine_07_07_10_nm_8_mm_tape_width_1_5_mm_tape_thickness_ex_1d5"
#filter = "smd_magazine_05_05_10_nm_8_mm_tape_width_1_5_mm_tape_thickness_ex_1d5"
#filter = "8_mm_tape_thickness"
#filter = "smd_magazine_03_03_10_nm_8_mm_tape_width_1_5_mm_tape_thickness_ex_1d5"
#filter = "02_02_10_nm_8_mm_tape_width_1_5_mm_tape_thickness_ex_1d5"
#filter = ["m2", "ba", "i2", "hv"]
#filter = "oobb_smd_magazine_13_13_14_nm_8_mm_tape_width_on_10_mm_reel_1_5_mm_tape_thickness_ex_1d5"
#filter = "oobb_circle_1d5_06"
#filter = "refiller_03_ex"
filter = "servo_standard"
#filter = "oobb_holder_motor_servo_standard_01_bottom_05_03_55"
#filter = filt

overwrite = True
#overwrite = False
oobb_base.build_things(overwrite=overwrite, filter=filter, save_type=save_type)

copy_files = True
copy_files = False
if copy_files:
    oobb_markdown.make_markdown()
    oobb_dxf_laser_copy.folders_to_folder_dxf()
    oobb_dxf_laser_copy.folders_to_folder_stl()
    oobb_dxf_laser_copy.folders_to_folder_svg()
    oobb_dxf_laser_copy.folders_to_folder_png()
    oobb_dxf_laser_copy.folders_to_folder_all()
pass
