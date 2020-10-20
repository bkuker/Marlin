$fn = 50;

x = 43.5;
y = 0;

difference(){
    union(){
        hull(){
            cube([10,20,20]);
            cube([30,20,5]);
            cube([50,5,5]);
        }



        hull(){
            translate([25,0,0])
                cube([7,7,7]);
            translate([x,-y,0]){
                cylinder(7,15,15);
            }
        }
    }

    union(){
        translate([x,-y,0]){
            translate([0,0,2])
                cylinder(15,11,11);
        }
        
        translate([x,-y,0]){
            translate([0,0,0])
                cylinder(15,5.5,5.5);
        }

        translate([6,4,7])
                cube([50,12,20]);
        d=5.5;
        translate([-1,10,13])
            rotate([0,90,0])
                cylinder(50,d/2,d/2);
        rotate([0,0,45])   
            cube([4,4,50], true);
    }
}