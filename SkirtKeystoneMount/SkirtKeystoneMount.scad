offset = 94;
$fn=40;

difference () {
union () {
intersection() {
translate([offset + 2.5,70,9.9]) {
rotate([270,0,90]) {
import("skirt_keystone_jack.stl");
}
}

translate([offset,3,0]) {
cube([20.5,29,50]);
}
}

difference() {
translate([-97,-151.5,0]) {
import("skirt_300_right_x4.stl");
}
translate([offset,3,0]) {
cube([20.5,29,50]);
}


}

translate([offset,3,0]) {
cube([20.5,2,2]);
}

translate([offset,30,0]) {
cube([20.5,2,2]);
}


}
translate([0,50,10]) {
rotate([90,0,0]) {
translate([127.85,0,0]) {
cylinder(d=3.8,h=60);
}
}
}
}