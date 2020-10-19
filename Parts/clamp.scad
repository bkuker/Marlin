//This is the cable clamp used on the extruder cables
$fn = 40;

translate([0,0,16])
    rotate([0,180,0])
        difference(){
            hull(){
                translate([15/2,0,0]){
                    cylinder(16,6,6);
                }
                translate([-15/2,0,0]){
                    cylinder(16,6,6);
                }
                translate([-5,-7,0])
                    cube([10,16,16],false);
            }

            union(){
                translate([15/2,0,0]){
                    cylinder(18,2,2);
                }
                translate([-15/2,0,0]){
                    cylinder(18,2,2);
                }
            }


            translate([0,20,17/2])
                rotate([90,0,0])
                    #cylinder(50,6.5,6.5);

            translate([-50,-50,0])
                cube([100,100,17/2], false);
        }
