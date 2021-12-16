$fn = 30;
offsetX = -178;
offsetY = -169;
offsetZ = - 5;

module foo () {
translate([0,-2,0])
intersection() {
mirror([0,0,0]) {
translate([offsetX,offsetY,offsetZ]) {
import("nozzle_probe.stl");
}
}

translate([-10,1,5])
cube([2,7,7],center=true);
}


difference() {
mirror([0,1,0]) {
translate([offsetX,offsetY,offsetZ]) {
import("nozzle_probe.stl");
}
}

translate([-10,-1,5]) {
cube([2,7,7],center=true);
}
}
/*
translate([-68.5,58,12]) {
rotate([0,0,270]) {
import("[a]_z_endstop_pcb_bottom.stl");
}
}*/

}




translate([0,0,-2]) {
difference() {
    foo();
    translate([-15,-20,-1.3]) {
        cube([40,40,20]);
    }
}
}

difference() {
    foo();
    translate([-15,-20,-6.3]) {
cube([40,40,2.5]);
}

translate([0,0,8]) {
    translate([-7.6,11.3,0]) {
        cylinder(d=1.7,h=5);
    }
    
     translate([7.3,11.3,0]) {
        cylinder(d=1.7,h=5);
    }
    
    translate([-7.6,-13,0]) {
        cylinder(d=1.7,h=5);
    }
    
     translate([7.3,-13,0]) {
        cylinder(d=1.7,h=5);
    }
}
}