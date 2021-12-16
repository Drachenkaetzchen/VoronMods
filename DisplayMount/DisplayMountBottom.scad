$fn=30;
holeDistance = 9;
holeDiameter=3.5;
hole2Diameter=6;

difference() {
translate([ - (125.31/2),-6.5 + (98.94/2),0]) {

translate([6.1,-6.5,0]) {
import("HDMI5_Bottom_v147.stl");
}
}

translate([-30,23,0]) {
holes();
}
translate([30,23,0]) {
holes();
}
}
module holes () {
translate([0,-holeDistance,0]) {
    cylinder(d=holeDiameter,h=10);
    
    translate([0,0,1]) {
    cylinder(d=hole2Diameter,h=2.5);
    }
}
cylinder(d=holeDiameter,h=10);
translate([0,0,1]) {
    cylinder(d=hole2Diameter,h=2.5);
    }
}