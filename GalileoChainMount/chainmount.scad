

difference() {
translate([0,2,0]) {
import("galileo_v1_8_china_chain_mount.stl");
}
translate([-30,-30,-10]) {
cube([60,30,60]);
}
}

difference() {
    import("galileo_v1_8_china_chain_mount.stl");
translate([-30,0,0]) {
cube([60,30,30]);
}
}

