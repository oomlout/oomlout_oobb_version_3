import oobb
import oobb_base
import opsc

import os
from solid import *
from solid.utils import *

import os
import shutil

def main():
    pass
    folder_things = "things"
    details = []    
    details.append({    "name":"oomlout_oobb_bundle_decorations",
                        "matches": ["oobb_decoration"]})
    details.append({    "name":"oomlout_oobe_bundle_decorations",
                        "matches": ["oobe_decoration"]})


    for detail in details:
        name = detail["name"]
        matches = detail["matches"]
        folder_bundle = f"git/{name}"
        folder_bundle_src = f"git/{name}/src"
        
        print(f"processing {name}")
        #go through each folder in things   
        for folder in os.listdir(folder_things):
            for match in matches:
                if match in folder:
                    copy_folder(folder_things, folder, folder_bundle, name, )
        make_all_3dpr_file(folder_bundle)
    
def make_all_3dpr_file(folder_bundle):
    #get a list of all the files in scad/ that end with _3dpr.scad
    files = []
    for file in os.listdir(os.path.join(folder_bundle, "3dpr")):
        if file.endswith(".stl"):
            files.append(file)
    #go through each file


    # Define your shift values
    shift_x = 140
    shift_y = 75

    # List of SCAD files
    stl_files = files  # replace these with your actual file names

    # Initialize an empty OpenSCAD object
    assembly = []

    
    #fill shift values to make a square grid of the number of files in scad_files
    shift_values = []
    for i in range(len(stl_files)):
        shift_values.append([shift_x * (i % 4), shift_y * (i // 4), 0])


    

    file_out = os.path.join(folder_bundle, "3dpr/3dpr_all.scad")
    file_out_base = os.path.join(folder_bundle, "3dpr_all")
    with open(file_out, "w") as f:
        for shift, filename in zip(shift_values, stl_files):
            f.write(f'translate([{shift[0]}, {shift[1]}, {shift[2]}]) ' + '{' + '\n')
            f.write(f'import("{filename}");\n')
            f.write('}\n')
    #use the command line openscad.exe to create an stl and png of this file

    #only if.stl of it doesnt exist
    if not os.path.isfile(f"{file_out_base}.stl"):
        os.system(f"openscad -o {file_out_base}.stl -o {file_out_base}.png {file_out}")


    
def copy_folder(folder_things, folder, folder_bundle, name):
    print(f"    processing {folder}")
    #copy the folder to folder_bundle/src
    folder_bundle_src = f"git/{name}/src"
    folder_bundle_src_folder = os.path.join(folder_bundle_src, folder)
    if not os.path.isdir(folder_bundle_src_folder):
        shutil.copytree(os.path.join(folder_things, folder), folder_bundle_src_folder)
    #process the source folder
    #copy 3dpr laser laser_flat and true .scad to scad folder
    

    details = []
    details.append({"folder_bundle" : "scad",
                    "files" : ["3dpr.scad", "laser.scad", "laser_flat.scad", "true.scad"]}
                    )
    details.append({"folder_bundle" : "stl",
                    "files" : ["3dpr.stl", "laser.stl", "laser_flat.stl", "true.stl"]}
                    )    
    details.append({"folder_bundle" : "3dpr",
                    "files" : ["3dpr.stl"]}
                    )    
    details.append({"folder_bundle" : "png",
                    "files" : ["3dpr.png", "laser.png", "laser_flat.png", "true.png"]}
                    )
    
    folder_bundle_start = folder_bundle
    for detail in details:

        ###### scad

        folder_bundle = os.path.join(folder_bundle_start, detail["folder_bundle"])
        if not os.path.isdir(folder_bundle):
            os.makedirs(folder_bundle)
        files = detail["files"]
        for file in files:
            #make the new filename the folder things name plus a _ and the file name
            new_file_name = folder + "_" + file
            src = os.path.join(folder_bundle_src_folder, file)
            dst = os.path.join(folder_bundle, new_file_name)
            #if src exists copy it to dst
            if os.path.isfile(src):
                #copy the file to the new folder
                shutil.copyfile(src, dst)
                #print a dot with no new line
                print(".", end="")
                #print (f"        copied {src} to {dst}")
    






if __name__ == "__main__":
    main()