import oobb
import oobb_base
import oobb_make_sets
import oomB
import oobb_markdown
import oobb_dxf_laser_copy
import copy


filt = "hl"
#filt = ["bp","wh","bc"]
#filt=""
filts = copy.deepcopy(filt)
#add s to the end of every string in filt if its an array otherwise just add an s to the end
if type(filts) == list:
    filts = [f"{f}s" for f in filts]
else:
    filts = f"{filts}s"


oobb_make_sets.make_all(filter=filts)

oobb_base.dump("json")
oobb_base.dump("folder")
# oobb_base.load("folder")
# oobb_base.load("json")

overwrite = True
overwrite = False

save_type = "none"
#save_type = "laser"
save_type = "all"

filter = "gearmotor"
#filter = ["m2", "ba", "i2", "hv"]
#filter = filt
oobb_base.build_things(overwrite=True, filter=filter, save_type=save_type)

copy_files = True
copy_files = False
if copy_files:
    oobb_markdown.make_markdown()
    # oobb_dxf_laser_copy.folders_to_folder_dxf()
    # oobb_dxf_laser_copy.folders_to_folder_stl()
    # oobb_dxf_laser_copy.folders_to_folder_svg()
    # oobb_dxf_laser_copy.folders_to_folder_png()
    oobb_dxf_laser_copy.folders_to_folder_all()
pass
