$fn=30;

height = 39;

difference() {
    union() {
cube([34,32,4.2],center=true);
        translate([-12.5,0,height/2 - 4.2/2]) {
cube([15,32,height],center=true);
        }
    }

translate([-12,0,0]) {
    
    translate([0,-10,-4]) {
    cylinder(d=8,h=10);
    }
    
    translate([0,-10,6]) {
    cylinder(d1=8,d2=4.7,h=10);
    }
    
    translate([0,-10,-3]) {
        cylinder(d=4.7,h=40);
    }

    translate([0,10,-4]) {
        cylinder(d=8,h=10);
    }
    
    translate([0,10,6]) {
        cylinder(d1=8,d2=4.7,h=10);
    }
    
    translate([0,10,-3]) {
        cylinder(d=4.7,h=40);
    }
}


translate([12,0,0]) {
translate([0,-10,-3]) {
cylinder(d=5.5,h=6);
}

translate([0,10,-3]) {
cylinder(d=5.5,h=6);

}
}
}