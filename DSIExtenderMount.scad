$fn=30;

module main () {
translate([-99.2,-109.3,0]) {
import("pcb_din_clip_x3.stl");
}

translate([12.5,-7,0]) {
cube([30,8,4.6]);
}
}


module holes () {

translate([18,-3,0]) {
cylinder(d=2.3,h=5);

translate([20,0,0]) {
    cylinder(d=2.3, h=5);
}
}

}

difference() {
    main();
    holes();
}