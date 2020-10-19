//This is the top for the part cooling fan.
//Printed in two parts No infill, no bottom layer.
//Two top layers for the big part, no top layer for the small part.
//Hole must be cut in the larger part after printing, too lazy to do
//the scad work.

cube([12.9,17,5]);

hull(){
translate([0,0,3])
    cube([12.9,17,5]);
translate([-5,2,15])
    rotate([-35,-90,0])
    cube([8,11,2]);
}

translate([-5,2,15])
    rotate([-35,-90,0])
    cube([8,11,5]);

translate([20,0,0])
    cube([8,11,5]);
