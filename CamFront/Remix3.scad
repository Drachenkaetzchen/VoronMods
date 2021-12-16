$fn=30; 

difference () {
translate([0,-5.4,0]) {
import("adapter.stl");
}

translate([-14,2,-20]) {
cube([20,20,40]);
}
}

translate([0,-3.5,0]) {
import("adapter.stl");
}