offset1 = 94;
offset2 = 141;
diff = 94 - 47.3;

$fn=40;

module foo1 (voffset)  {
    intersection()
    {
        translate([voffset + 2.5,70,9.9])
        {
            rotate([270,0,90])
            {
                import("skirt_keystone_jack.stl");
            }
        }

        translate([voffset,3,0])
        {
            cube([20.5,29,50]);
        }
    }
}

module foo2(voffset) {
     translate([voffset,3,0])
            {
                cube([20.5,29,50]);
            }
}

module foo3(voffset) {
    
    translate([voffset,3,0])
        {
            cube([20.5,2,2]);
        }

        translate([voffset,30,0])
        {
            cube([20.5,2,2]);
        }
    }

difference ()
{
    union ()
    {
        foo1(offset1);
        foo1(offset2);

        difference()
        {
            translate([-97,-151.5,0])
            {
                import("skirt_300_right_x4.stl");
            }

            foo2(offset1);
            foo2(offset2);
        }

        foo3(offset1);
        foo3(offset2);


    }
   /*    
    translate([0,50,10])
    {
        rotate([90,0,0])
        {
            translate([127.85,0,0])
            {
                cylinder(d=3.8,h=60);
            }
        }
    }
    
  translate([0,50,10])
    {
        rotate([90,0,0])
        {
            translate([57.55,0,0])
            {
                cylinder(d=3.8,h=60);
            }
        }
        
        
    }
    
    translate([0,12,10])
    {
        rotate([90,0,0])
        {
            translate([57.55,0,0])
            {
                cylinder(d=7,h=9);
            }
        }
    }*/
   

   
}

 

 