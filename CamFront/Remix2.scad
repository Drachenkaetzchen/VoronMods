$fn=30; 
difference() {
import("case_top.stl");

translate([0,-0.3,0]) {
cube([25,1.6,26],center=true);
}
translate([2,0,0]) {
rotate([90,0,0]) {
cylinder(d=9,h=19);
}
}
}

