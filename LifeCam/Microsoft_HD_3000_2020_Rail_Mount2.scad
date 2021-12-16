translate([0,-2.7+5.6+3.5,8.65]) {
rotate([115-90+40,0,0]) {
intersection() {
import("Microsoft_HD_3000_2020_Rail_Mount.stl");

translate([0,-10,-9]) {
cube([25,20,20]);
}
}
}
}

translate([0,0,3]) {
difference() {
import("Microsoft_HD_3000_2020_Rail_Mount.stl");
translate([-20,-13,-9]) {
cube([70,20,30]);
}
}
}

translate([0,-15,17]) {

cube([25,14.2,3]);
}

translate([0,-3.8,13]) {

cube([25,3,5]);
}