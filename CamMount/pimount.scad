angle1 = 40;
angle2 = 45;

vx = 1.45;


union() {
    translate([vx/2,11.6,3]) rotate([45,0,0]) cube([25+vx,1,2], center=true);
    
difference() {
// Base
    
    union() {
    hull() {
    base();
        plate(false);
    }
    
    
    plate();
    
    
}

translate([-25,11.5,2.5]) cube([50,30,25]);
    translate([-25,11.5,-27.5]) cube([50,30,25]);
    
// Channel buffer
// Small hole
    translate([0,15,0]) rotate([0,90,90]) cylinder(h=18, d=3.2, center= true, $fn=64); 
// Big hole
    translate([0,-13.5,0]) rotate([0,90,90]) cylinder(h=40, d=6, center= true, $fn=64); 
    
    // Cut for Angle
    //translate([7,20,1]) rotate([-40,0,0]) translate([10,-30,-30]) rotate([0,35,0]) translate([0,10,0])  cube([25,55,25], center =true);
    
    // Minor channel for the ribbon cable
    //translate([12,-11,-9]) cube([10,20,15]);
    
    // Cosmetic
   // rotate([0,90,0]) translate([-9,-10,-8]) rotate([0,-30,30]) cube([10,45,45], center = true);
translate([-15,0,8.5]) {
rotate([90,0,100]) {
cylinder(d=5,h=40,$fn=40);
}
}
}

    

}

module base () {
    difference() {
    translate([0,10,0]) {
    cube([25,6,20], center =true);
    }
// Channel inlets
    //translate([-25,11.5,2.5]) cube([50,30,25]);
    //translate([-25,11.5,-27.5]) cube([50,30,25]);
}
}


module plate(with_studs=true) {
translate([0,-25,10]) {

//rotate([60,90,0]) {
rotate([angle1,0,angle2])
rotate([90,90,0]) {
    if (with_studs) {
import("CamMount145.stl");        
    } else {
translate([0,7,0]) {
cube([25,25,2.4]);
}
}


}
}
}



