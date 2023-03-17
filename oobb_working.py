import oobb
import oobb_base
import oobb_make_sets
import oomB
import oobb_markdown


#oobb_make_sets.make_all()
oobb_make_sets.make_jacks()
#oobb_make_sets.make_jacks(size = "oobe")
#oobb_make_sets.make_nuts()
#oobb_make_sets.make_screws_countersunk()
#oobb_make_sets.make_plates()
#oobb_make_sets.make_plates(size = "oobe")
#oobb_make_sets.make_tests()
#oobb_make_sets.make_mounting_plates()

oobb_base.dump("json")
oobb_base.dump("folder")
#oobb_base.load("folder")
#oobb_base.load("json")
save_type = "none"

save_type = "all"
overwrite = True
#overwrite = False
filter = "oobb_ja_03_02_12"
filter = "oobb_pl_03_01"
filter = "pl_"
filter = "ja_"
#filter = "mp_"
#filter = "oobe_"
#filter = "oobb_"   
#filter = "test_"   
#filter = ""


oobb_base.build_things(overwrite=True,filter=filter, save_type=save_type)
#oobb_markdown.make_markdown()
pass


width = 12        
height = 1
thickness = 3
#plate = oobb.get_pl(width,height,thickness)
