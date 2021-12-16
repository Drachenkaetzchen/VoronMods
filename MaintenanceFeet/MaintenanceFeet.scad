difference() {
    union () {
difference() {
translate([7,20,11.5]) {
    import("[a]_Support_Feet_5mm_x4.stl");
}

translate([7+6,0,0]) {
cube([20,20,20]);
}
}

translate([0,0,-9]) {
cube([7+6,20,10]);
}
}

translate([7+3,10,-9]) {
cylinder(d=9.6,h=10);
}
}