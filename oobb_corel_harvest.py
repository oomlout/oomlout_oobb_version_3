import oobb
import oobb_base
import opsc

import os
import shutil

def main():
    folder_things = "things"

    filter =""
    overwrite = False

    #go through each folder in things   
    for folder in os.listdir(folder_things):
        if filter in folder:
            #if there's a file called laser.cdr
            if os.path.isfile(os.path.join(folder_things, folder, "outline.cdr")):
                #copy scad/decoration.scad to folder and rename to 3dpr.scad USING SHUTIL
                filename_scad = os.path.join(folder_things, folder, "3dpr.scad")
                shutil.copyfile("scad/decoration.scad", filename_scad)
                #test to see if filename with an stl ending exists 
                filename_stl = os.path.join(folder_things, folder, "3dpr.stl")
                if not os.path.isfile(filename_stl) or overwrite:
                    opsc.saveToAll(filename_scad)
                else:
                    print(f"    skipping {filename_stl}")   

    

if __name__ == "__main__":
    main()