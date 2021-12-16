$fn=30;

holeDiameter = 4.7;
holeDistance = 22;
holeBorder = 5;

module main () {
translate([-99.2 - 56.9/2,-109.3,0]) {
import("pcb_din_clip_x3.stl");
}

cubeWidth = holeDistance + holeDiameter + holeBorder;
cubeHeight = holeDiameter + holeBorder;

translate([-cubeWidth/2,-cubeHeight,0]) {
cube([cubeWidth,cubeHeight,4.6]);
}
}


module holes () {

translate([-holeDistance/2,-(holeDiameter + holeBorder)/2,0]) {
cylinder(d=holeDiameter,h=5);
}

translate([holeDistance/2,-(holeDiameter + holeBorder)/2,0]) {
    cylinder(d=holeDiameter, h=5);
}

}

difference() {
    main();
    holes();
}