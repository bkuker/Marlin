//This is the plate that holds the part cooling fan

HoleR = 7/2;
HoleX = 5;
HoleY = 26;
BaseT = 2;

module base(){
color("#ff8899"){
    difference(){
        cube([100,49,BaseT]);
        translate([HoleX+HoleR,HoleY+HoleR,-1])
            cylinder(BaseT*2,HoleR,HoleR,false);
    }
    translate([0,49,0])
    cube([100,BaseT,60]);
}
}


FanHD = 58;
FanT = 15;
FanD = 48;
fs = FanHD / sqrt(2);
module fan(){
    color("#666666"){
        translate([-4,-4,-(FanT)]){
            translate([fs/2,fs/2,FanT/2])
                cylinder(FanT, FanD/2, FanD/2, true);
            hull(){
            translate([0,fs,0])
                cylinder(FanT, 3, 3);
            translate([fs,0,0])
                cylinder(FanT, 3, 3);
            }
            translate([0,fs,0])
                cylinder(30, 2, 2);
            translate([fs,0,0])
                cylinder(30, 2, 2);
        }
    }
}

module extruder(){
    color("#444444")
    translate([24,4,BaseT])
        cube([20,43,43]);
}

//base();
//fan();
//extruder();
T = 5;

difference(){
    translate([-4,-4,T/2]){
        hull(){
            translate([fs/2,fs/2,0])
                cylinder(T, 2+FanD/2, 2+FanD/2, true);
            translate([0,fs,0])
                cylinder(T, 4, 4, true);
            translate([fs,0,0])
                cylinder(T, 4, 4, true);
        }
    }
    union(){
        base();
        fan();
        extruder();
    }
}
