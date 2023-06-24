

difference(){
    
    union(){//main body
        difference(){
            linear_extrude(3){
                import("outline_pos.svg");
            }
            linear_extrude(3){
                import("outline_neg.svg");
            }
        }
    }
    union(){//indent
        translate([0,0,3-1]){
            difference(){
            linear_extrude(1){
                import("indent_pos.svg");
            }
            linear_extrude(1){
                import("indent_neg.svg");
            }
        }
        }
    }
        
}