include<NopSCADlib/lib.scad>;

baseFrameExtrusionLength = 420;
topHatExtrusionLength = 380;
topHatOffset = 100;
extrusionDifference = baseFrameExtrusionLength - topHatExtrusionLength;

insertWidth = 4;

insertPoint1 = (20/2 + insertWidth/2);
insertPoint2 = (20/2 - insertWidth/2);

//hatFrame();
//baseFrame();

module topFooLower (posX, posY, posZ, sizeX, sizeY, cutoutX, cutoutY, height) {
    difference () {
        translate([posX,posY,posZ]) {
            cube([sizeX, sizeY, height]);
        }
     
        translate([posX, posY, posZ]) {
            cube([cutoutX,cutoutY,height]);
        }
    }
}
 difference() {

union () {
difference () {
hull() {
    topFooLower(topHatExtrusionLength / 2 -20, topHatExtrusionLength / 2 -20, topHatOffset-15, 47, 47, 20,20,5);

topFooLower(baseFrameExtrusionLength / 2 -(extrusionDifference), baseFrameExtrusionLength / 2 -(extrusionDifference),10, 20+extrusionDifference, 20+extrusionDifference, extrusionDifference,extrusionDifference,5);
}

hull() {
 topFooLower(topHatExtrusionLength / 2 -20, topHatExtrusionLength / 2-20 , topHatOffset-30, 20, 20, 0,0,20);

 topFooLower(baseFrameExtrusionLength / 2 - (extrusionDifference+20), baseFrameExtrusionLength / 2 - (extrusionDifference+20), 10, extrusionDifference+20, extrusionDifference+20, 0,0,5);
}

/*translate([baseFrameExtrusionLength / 2 +10, baseFrameExtrusionLength / 2+10,10]) {
cylinder(d=5.3,h=200);
    translate([0,0,5]) {
    cylinder(d=9,h=200);
    }
}*/




}



 topFooLower(topHatExtrusionLength / 2 -20, topHatExtrusionLength / 2 -20, topHatOffset-10, 47, 47, 40,40,20);

 topFooLower(topHatExtrusionLength / 2 , topHatExtrusionLength / 2 , topHatOffset-10, 20, 20, 0,0,20);
}


translate([topHatExtrusionLength / 2+20 , topHatExtrusionLength / 2 -10,topHatOffset]) {
    rotate([0,90,0]) {
cylinder(d=5.3,h=200);
    translate([0,0,5]) {
    cylinder(d=9.8,h=200);
    }
}
}

translate([topHatExtrusionLength / 2-10 , topHatExtrusionLength / 2 +20,topHatOffset]) {
    rotate([0,90,90]) {
cylinder(d=5.3,h=200);
    translate([0,0,5]) {
    cylinder(d=9.8,h=200);
    }
}
}
translate([baseFrameExtrusionLength / 2 - extrusionDifference+30, baseFrameExtrusionLength / 2+10,10]) {
cylinder(d=5.3,h=200);
    translate([0,0,5]) {
    cylinder(d=9.8,h=200);
    }
}


translate([baseFrameExtrusionLength / 2 +10, baseFrameExtrusionLength / 2-extrusionDifference+30,10]) {
cylinder(d=5.3,h=200);
    translate([0,0,5]) {
    cylinder(d=9.8,h=200);
    }
}


translate([baseFrameExtrusionLength/2 -extrusionDifference-5 ,0,10]) {
rotate([90,0,90]) {
    linear_extrude(13) {
polygon(points = [[baseFrameExtrusionLength / 2 + insertPoint1 ,0],
        [baseFrameExtrusionLength / 2 +insertPoint2,0],
        [topHatExtrusionLength / 2 +insertPoint2, topHatOffset-20],
        [topHatExtrusionLength / 2+insertPoint1, topHatOffset-20]]);
    }
}
}
translate([0,baseFrameExtrusionLength/2 -extrusionDifference+8 ,10]) {
rotate([90,0,0]) {
    linear_extrude(13) {
polygon(points = [[baseFrameExtrusionLength / 2 + insertPoint1 ,0],
        [baseFrameExtrusionLength / 2 +insertPoint2,0],
        [topHatExtrusionLength / 2 +insertPoint2, topHatOffset-20],
        [topHatExtrusionLength / 2+insertPoint1, topHatOffset-20]]);
    }
}
}
}



module hatFrame () {
    halfLength = topHatExtrusionLength / 2 + 10;
    
    translate([0,0,topHatOffset]) {
        translate([-halfLength,0,0]) {
            rotate([90,0,0]) {
                extrusion(E2020, topHatExtrusionLength);
            }
        }

        translate([halfLength,0,0]) {
            rotate([90,0,0]) {
                extrusion(E2020, topHatExtrusionLength);
            }
        }

        translate([0,halfLength,0]) {
            rotate([0,90,0]) {
                extrusion(E2020, topHatExtrusionLength);
            }
        }

        translate([0,-halfLength,0]) {
            rotate([0,90,0]) {
                extrusion(E2020, topHatExtrusionLength);
            }
        }
    }
}

module baseFrame () {
    halfSize = baseFrameExtrusionLength/2 + 10;
    
    translate([-halfSize,0,0]) {
        rotate([90,0,0]) {
            extrusion(E2020, baseFrameExtrusionLength);
        }
    }

    translate([halfSize,0,0]) {
        rotate([90,0,0]) {
            extrusion(E2020, baseFrameExtrusionLength);
        }
    }

    translate([0,halfSize,0]) {
        rotate([0,90,0]) {
            extrusion(E2020, baseFrameExtrusionLength);
        }
    }

    translate([0,-halfSize,0]) {
        rotate([0,90,0]) {
            extrusion(E2020, baseFrameExtrusionLength);
        }
    }

    translate([-220,-220,-10]) {
        extrusion(E2020, 40);
    }

    translate([220,-220,-10]) {
        extrusion(E2020, 40);
    }

    translate([220,220,-10]) {
        extrusion(E2020, 40);
    }

    translate([-220,220,-10]) {
        extrusion(E2020, 40);
    }
}