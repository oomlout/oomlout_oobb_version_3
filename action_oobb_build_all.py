import oobb
import oobb_base
import oobb_make_sets

oobb_make_sets.make_all()
oobb_base.dump("folder")
oobb_base.dump("json")
oobb_base.build_things(overwrite=False, save_type="all")
input = input("Press Enter to continue...")

