$fn=30;

difference() {
union () {
import("M5_System20 L Bracket 20-40mm Rounded (1).stl");

translate([0,-15,5.5]) {
cube([4,30,30]);
}
}

translate([0,-10,30]) {
rotate([0,90,0]) {
cylinder(d=4.7,h=4);
}
}

translate([0,10,30]) {
rotate([0,90,0]) {
cylinder(d=4.7,h=4);
}
}

translate([16,-20,0]) {
cube([4,40,4]);
}
}

