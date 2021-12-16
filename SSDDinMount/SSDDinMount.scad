$fn=30;
sDistance = 76.6;

difference() {
union () {
base();

translate([-10.8,0,0]) {

intersection () {
translate([-131 ,-141.3,0]) {
import("rs25_psu_bracket_clip.stl");
}
leftCube();

}
}

translate([10.8,0,0]) {

intersection () {
translate([-131 ,-141.3,0]) {
import("rs25_psu_bracket_clip.stl");
}
rightCube();

}
}

translate([-23,0,0]) {
leftProjection(11);
}


translate([36.3,0,0]) {
rightProjection(11);
}
}

screwHoles();
}


module rightProjection (height) {
    rotate([0,-90,0]) {
    linear_extrude(height) {
projection(cut = true) {
    
    translate([0,0,25]) {
    rotate([0,90,0]) {
    base();
    }
}
}
}
}
}

module leftProjection (height) {
    rotate([0,-90,0]) {
    linear_extrude(height) {
    projection(cut = true) {
    translate([0,0,-20]) {
    rotate([0,90,0]) {
    base();
    }
}
}
}
}
}

module base ()
{
    difference()
    {
        translate([-131 ,-141.3,0])
        {
            import("rs25_psu_bracket_clip.stl");
        }

        leftCube();
        rightCube();
    }

}

module screwHoles () {

    translate([-sDistance/2,0,0]) {
    cylinder(d=4,h=20);
    }

    translate([sDistance/2,0,0]) {
    cylinder(d=4,h=20);
    }

}

module leftCube () {
    translate([-28,0,0]) {
cube([10,20,20],center=true);
}
}

module rightCube () {
    translate([29,0,0]) {
cube([7,20,20],center=true);
}
}