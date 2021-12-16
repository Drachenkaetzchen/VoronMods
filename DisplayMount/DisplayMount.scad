$fn=30;
holeCoordX = 56.54;
holeCoordY = 42.95;

union () {
difference() {
translate([-177 - (125.31/2),-6.5 + (98.94/2),0]) {
import("HDMI5_Lid_v61_2mm_offset_fixed.stl");
}

translate([0,0,0.79]) {
cube([200,200,1.6],true);
}
}


difference() {
translate([-177 - (125.31/2),-6.5 + (98.94/2),-1.6]) {
import("HDMI5_Lid_v61_2mm_offset_fixed.stl");
}
translate([0,0,8+0.8]) {
cube([200,200,14],true);
}
}
}


