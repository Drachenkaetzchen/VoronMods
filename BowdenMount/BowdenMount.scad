use <threadlib/threadlib.scad>

$fn=50;

difference() {
union() {
translate([-45,-28,17.039]) {
import("[a]_leadscrew_block_x2_5mm.stl");
}

cHeight = 20;
translate([0,0,cHeight/2]) {
cube([19,19,cHeight],center=true);
}

/*translate([0,0,20]) {
linear_extrude(6) {
projection(cut=true)
translate([-45,-28,-2.96]) {
import("[a]_leadscrew_block_x2_5mm.stl");
}
}
}*/
}


translate([0,0,12]) {

tap("M6", turns=8);

}

cylinder(d=16,h=12);
}


