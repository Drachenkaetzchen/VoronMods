$fn=60;
buttonPositions = [ 57.5,80.9+23.4 ];

//cutoutPositionX = 80.9;

cutoutPositionX = 57.5;
cutoutPositionY = 17.5;

module main () {
    union ()  {
translate([-97.15,-151.5,0]) {
import("skirt_300_right_x4.stl");
}
/*translate([68,0,17]) {
cube([26,33,3]);
}*/
}
}





difference() {
  
        
main();
         translate([57.5,5.51,14]) {
//rotate([90,0,0]) {
    cube([17.5,4,9],center=true);
//cylinder(d=7.5,h=1.7);
//}

    }
           translate([57.5,3.51,14]) {
//rotate([90,0,0]) {
    cube([7.5,1,9],center=true);
//cylinder(d=7.5,h=1.7);
//}
}

    translate([57.5,4.2,10]) {
rotate([90,0,0]) {
cylinder(d=6.5,h=1.7);
}
}
    for (idx = [ 0 : len(buttonPositions) - 1 ] ) {
        translate([buttonPositions[idx],cutoutPositionY,0]) {
cylinder(d=22.3,h=20);
}

translate([buttonPositions[idx],cutoutPositionY,6]) {
cylinder(d=25.3,h=20);
}

}


}