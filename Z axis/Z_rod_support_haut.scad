

// extrusion 20X20
ex_h = 20;

// screw M3
screw_d = 3+0.5;

// Rod 8mm
rod_d = 8+0.8;

// support
sup_base_h = 4.35;
sup_base_w = 50;
sup_rod_h = 22;
sup_rod_d = 20;
sup_rod_w = sup_base_w/3;
sup_hole_w = 2;

difference(){
union(){
    cube([sup_base_w,ex_h,sup_base_h]);
    translate([sup_base_w/2,sup_rod_d/2,sup_rod_h/2+5+sup_base_h])
    cube([sup_rod_w,sup_rod_d,sup_rod_h+10],true);
}
union(){
    // rod hole
    translate([sup_base_w/2,0.5*sup_rod_d,sup_rod_h+10]) 
    cube([sup_hole_w,2*sup_rod_d,sup_rod_h],true);

    translate([sup_base_w/2,sup_rod_d*1.5,sup_rod_h]) rotate([90,0,0]) 
    cylinder(d=rod_d,h=sup_rod_d*2);
    
    // screw hole Base
    translate([1/6*sup_base_w,ex_h/2,-sup_base_h])
    cylinder(h=sup_base_h*3,d=screw_d);
    
    translate([5/6*sup_base_w,ex_h/2,-sup_base_h])
    cylinder(h=sup_base_h*3,d=screw_d);
    
    // Screw hole top
    //translate([0,1/6*sup_rod_d,sup_rod_h+8]) rotate([0,90,0])
    //cylinder(h=sup_rod_w*3,d=screw_d);
    
    translate([0,3/6*sup_rod_d,sup_rod_h+8]) rotate([0,90,0])
    cylinder(h=sup_rod_w*3,d=screw_d);
    
    //translate([0,5/6*sup_rod_d,sup_rod_h+8]) rotate([0,90,0])
    //cylinder(h=sup_rod_w*3,d=screw_d);
}
}