
$fn=60;

difference() {
translate([48,46,0]) {
import("door_latch_x2.stl");
    
}

translate([0,11.5,0]) {
cylinder(d=6.2,h=3.4);
}

translate([0,-11.5,0]) {
cylinder(d=6.2,h=3.4);
}
}