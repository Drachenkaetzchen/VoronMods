include <Includes.scad>;

wireCutoutLength = coilHeight / 2 + coilBorder;

mainCubeWidth = coilWidth+coilBorder*2;
mainCubeHeight = coilHeight+coilBorder*2;
rightBorderSpace = coilBorder- wireWidth;

difference() {
    translate([-rightBorderSpace,0,0])
    {
        difference()
        {
            translate([rightBorderSpace,0,-coilBackplate/2]) {
                cube([coilWidth+coilBorder*2,coilHeight+coilBorder*2,coilBackplate],center=true);
            }
           
        }
    }

    screwHoleZ = -coilBackplate;

    translate([-mainCubeWidth/2+screHoleOffset,-mainCubeHeight/2+screHoleOffset,screwHoleZ]) {
        cylinder(d=screwHoleSize2,h=coilDepth);
    }
    translate([mainCubeWidth/2-screHoleOffset,-mainCubeHeight/2+screHoleOffset,screwHoleZ]) {
        cylinder(d=screwHoleSize2,h=coilDepth);
    }
    translate([mainCubeWidth/2-screHoleOffset,mainCubeHeight/2-screHoleOffset,screwHoleZ]) {
        cylinder(d=screwHoleSize2,h=coilDepth);
    }
    translate([-mainCubeWidth/2+screHoleOffset,mainCubeHeight/2-screHoleOffset,screwHoleZ]) {
        cylinder(d=screwHoleSize2,h=coilDepth);
    }
}
