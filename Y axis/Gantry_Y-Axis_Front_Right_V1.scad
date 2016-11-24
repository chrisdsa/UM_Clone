extra_h = 5;

module bearing() {
    extra = 0.8;
    d=8+extra;
    D1= 16 +extra;
    Df = 18 +extra;
    h = 5;
    hf = 1.1;
    res = 64;
    cylinder(d=D1, h+2, $fn=res);
    
    cylinder(d=Df, hf+1, $fn=res);
    
}

// screw
ds = 3.5;

ha = 25;
//hs = 20;
//l = 35;
//e = 3.3;

difference(){
    union(){
    translate([-58.6,141.7,-147.42]) import("Gantry_Y-Axis_Front_Right.stl", convexity=10);
    cylinder(ha,d=22,true);
    }
    
    union(){
    translate([0,0,ha+0.1]) rotate([180,0,0]) bearing();
    translate([0,0,-25]) cylinder(50,d=10,true);
    }
    
}