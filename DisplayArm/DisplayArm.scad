$fn=30;
extrusionZOffset = 42;
slotWidth = 6;
extrusionWidth = 20;
extrusionBlankSpace = (extrusionWidth - slotWidth) / 2;

module extrusion () {
    translate([0,0,extrusionZOffset]) {
        cube([20,200,20]);
    }
}

module display () {
    translate([0,0,extrusionZOffset + 10]) {
        rotate([0,20,180]) {
            cube([100,120,10]);
        }
    }
}
/*
color("red") {
rotate([270,0,0]) {
extrusion ();
display ();
}
}*/



module base () {
linear_extrude(12) {
polygon([
    [0,extrusionZOffset],
    [extrusionBlankSpace,extrusionZOffset],
    [extrusionBlankSpace+0.5,extrusionZOffset+1],
    [extrusionWidth-extrusionBlankSpace-0.5,extrusionZOffset+1],
    [extrusionWidth-extrusionBlankSpace,extrusionZOffset],
    [extrusionWidth, extrusionZOffset],
    [extrusionWidth, extrusionZOffset-17],
    [0, extrusionZOffset-17],
    
]);
}

translate([-24,271.35+25,0]) {
linear_extrude(12) {
scale([0.94,0.94,0.94]) {    
import("DisplayArm3.dxf");
}
}
}

}

difference() {
base();

translate([-31,17,12/2  ]) {
rotate([90,0,17]) {
    
cylinder(d=2.9,h=8);
translate([9,0,0]) {
cylinder(d=2.9,h=8);
}
    
}
}

translate([10,31.2+12,6]) {
rotate([90,0,0]) {
cylinder(d=5.5,h=32);
translate([0,0,7]) {
cylinder(d=10,h=32);
}
}
}
}