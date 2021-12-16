include <Includes.scad>;

wireCutoutLength = coilHeight / 2 + coilBorder;

mainCubeWidth = coilWidth+coilBorder*2;
mainCubeHeight = coilHeight+coilBorder*2;
rightBorderSpace = coilBorder- wireWidth;

makeCoilCase();

module makeCoilCase () {
difference() {
    translate([-rightBorderSpace,0,0])
    {
        difference()
        {
            translate([rightBorderSpace,0,-coilBackplate/2]) {
                cube([coilWidth+coilBorder*2,coilHeight+coilBorder*2,coilDepth+coilBackplate],center=true);
            }
            coil();
            wireCutout();
        }
    }

    screwHoleZ = -coilDepth/2;

    translate([-mainCubeWidth/2+screHoleOffset,-mainCubeHeight/2+screHoleOffset,screwHoleZ]) {
        cylinder(d=1.5,h=coilDepth);
    }
    translate([mainCubeWidth/2-screHoleOffset,-mainCubeHeight/2+screHoleOffset,screwHoleZ]) {
        cylinder(d=1.5,h=coilDepth);
    }
    translate([mainCubeWidth/2-screHoleOffset,mainCubeHeight/2-screHoleOffset,screwHoleZ]) {
        cylinder(d=1.5,h=coilDepth);
    }
    translate([-mainCubeWidth/2+screHoleOffset,mainCubeHeight/2-screHoleOffset,screwHoleZ]) {
        cylinder(d=1.5,h=coilDepth);
    }
}
}
module wireCutout () {
translate([ coilWidth/2+wireWidth/2,
            -wireCutoutLength/2,
            coilDepth/2-wireHeight/2])
{
    cube([wireWidth,wireCutoutLength,wireHeight],center=true);
}

translate([ coilWidth/2+wireWidth/2-1,
           0,
            coilDepth/2-wireHeight/2-0.25])
{
    cube([wireWidth+2,centerWidth,wireHeight+0.5],center=true);
}

}

    
module coil () {
    cylinderR = 3;
    roundPosX = coilWidth/2 - coilBundleWidth/2 -cylinderR/2;
    roundPosY = coilHeight/2 - coilBundleWidth/2 -cylinderR/2;
    
    
    translate([-roundPosX, roundPosY, 0])
    rotate([0,0,45]) {
    cube([4,2,coilDepth],center=true);
    }
    
    translate([roundPosX, -roundPosY, 0])
    rotate([0,0,45]) {
    cube([4,2,coilDepth],center=true);
    }
    
    translate([roundPosX, roundPosY, 0])
    rotate([0,0,-45]) {
    cube([4,2,coilDepth],center=true);
    }
    
    translate([-roundPosX, -roundPosY, 0])
    rotate([0,0,-45]) {
    cube([4,2,coilDepth],center=true);
    }
    
    difference() {
    cube([coilWidth,coilHeight,coilDepth],center=true);
        
    cube([coilWidth-(2*coilBundleWidth),coilHeight-(2*coilBundleWidth),coilDepth],center=true);
        
        
        
    }
    
    
}

//import("MM2_roll_mount_large.stl");