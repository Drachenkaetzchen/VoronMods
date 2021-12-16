difference() {
translate([-33.5,-41.47+20,-59.3]) {
import("wire_anchor_x2.stl");
}


translate([7.32,0,0]) {
    slots();
}

translate([21.73,0,0]) {
    slots();
}
}

module slots () {
    cube([4,20,1.2]);
    cube([4,2.1,10]);
    
    translate([0,18,0]) {
        cube([4,2.1,10]);
    }
}