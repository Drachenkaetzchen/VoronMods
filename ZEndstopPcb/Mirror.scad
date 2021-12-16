translate([0,-2,0])
intersection() {
mirror([0,0,0]) {
translate([-58,-55,0]) {
import("z_endstop_pcb_top.stl");
}
}

translate([-10,1,5])
cube([2,7,7],center=true);
}


difference() {
mirror([0,1,0]) {
translate([-58,-55,0]) {
import("z_endstop_pcb_top.stl");
}
}

translate([-10,-1,5]) {
cube([2,7,7],center=true);
}
}