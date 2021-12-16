offset=0.8;

difference() {
translate([-140,-140,0]) {
import("skirt_300_power.stl");
}

translate([23.45,15.95,offset]) {
cube([6.5,1.5,3]);
}


translate([23.45,15.95,3]) {
    rotate([-5,0,0])
cube([6.5,1.5,9]);
}


translate([23.45,44.4,offset]) {
cube([6.5,1.5,3]);
}

translate([23.45,44.4,3]) {
    rotate([5,0,0])
cube([6.5,1.5,9]);
}


translate([-5.25,44.4,offset]) {
cube([9.3,1.5,3]);
}

translate([-5.25,44.4,3]) {
    rotate([5,0,0])
cube([9.3,1.5,9]);
}

translate([-5.25,15.95,offset]) {
cube([9.3,1.5,3]);
}

translate([-5.25,15.95,3]) {
    rotate([-5,0,0])
cube([9.3,1.5,9]);
}
}

