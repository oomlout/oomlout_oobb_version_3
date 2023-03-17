import oomB

def dxf_copy_to_laser():
    directory_base = r"things"
    directory_laser= r'C:\DB\Dropbox\LALA-Laser Files\oobb'
    oomB.file_copy_search(directory_base,"laser-flat.dxf",output_dir=directory_laser)

if __name__ == "__main__":
    dxf_copy_to_laser()
