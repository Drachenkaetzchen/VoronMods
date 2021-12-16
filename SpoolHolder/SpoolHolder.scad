use<CoilCase.scad>;
include<Includes.scad>;

difference() {
import("MM2_roll_mount_large.stl");
        
translate([85,37,(coilDepth)/2]) {
    translate([0,0,coilBackplate/2]) {
    cube([coilHeight+coilBorder*2,coilWidth+coilBorder*2,coilDepth+coilBackplate],center=true);
    }
}
}

    
translate([85,37,(coilDepth)/2]) {
    
    
    
    rotate([180,0,90]) {
makeCoilCase();
    }
}

/*translate([85,-3,15]) {
cube([20,20,20],center=true);
}*/