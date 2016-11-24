

// extrusion 20X20
ex_h = 20;

// screw M3
screw_d = 5+0.5;
screw_m3 = 3+0.5;

// Support Rod 10.2mm
rod_d = 10.2+0.8;

// support
sup_base_h = 4.35;
sup_base_w = 50;
sup_base_l = 45;
sup_rod_h = 30;
sup_rod_d = 20+sup_base_h;
sup_rod_w = sup_base_w/3;
sup_hole_w = 2;
renfort_w = 3;

// trou pour vis
distance_vis = 8;

difference(){
    union(){
    translate([-ex_h,0,-sup_base_h])
    cube([sup_base_l+ex_h,sup_base_w,sup_base_h]);

    translate([])
    cube([sup_base_h,sup_base_w,ex_h]);

    cube([sup_base_l,renfort_w,ex_h]);

    translate([0,sup_base_w-renfort_w,0])
    cube([sup_base_l,renfort_w,ex_h]);
    }
    // diff
    
    // Coupe pour le triangle
    translate([sup_base_h,-0.5*renfort_w,ex_h]) rotate([0,23.5,0])
    cube([sup_base_l+ex_h,renfort_w*2,ex_h]);

    translate([sup_base_h,sup_base_w-1.5*renfort_w,ex_h]) rotate([0,23.5,0])
    cube([sup_base_l+ex_h,renfort_w*2,ex_h]);
    
    // Trou pour la rod
    translate([sup_rod_h,sup_base_w/2,0])
    cube([1.5*rod_d,rod_d,3*sup_base_h],true);

    
    // Trous pour vis (pour lead screw)
    translate([sup_rod_h+distance_vis,sup_base_w/2,-1.5*sup_base_h])
    cylinder(2*sup_base_h,d=screw_m3);
    
    translate([sup_rod_h-distance_vis,sup_base_w/2,-1.5*sup_base_h])
    cylinder(2*sup_base_h,d=screw_m3);
    
    translate([sup_rod_h,sup_base_w/2+distance_vis,-1.5*sup_base_h])
    cylinder(2*sup_base_h,d=screw_m3);
    translate([sup_rod_h+1,sup_base_w/2+distance_vis,-1.5*sup_base_h])
    cylinder(2*sup_base_h,d=screw_m3);
    translate([sup_rod_h+2,sup_base_w/2+distance_vis,-1.5*sup_base_h])
    cylinder(2*sup_base_h,d=screw_m3);
    
    translate([sup_rod_h,sup_base_w/2-distance_vis,-1.5*sup_base_h])
    cylinder(2*sup_base_h,d=screw_m3);
    translate([sup_rod_h+1,sup_base_w/2-distance_vis,-1.5*sup_base_h])
    cylinder(2*sup_base_h,d=screw_m3);
    translate([sup_rod_h+2,sup_base_w/2-distance_vis,-1.5*sup_base_h])
    cylinder(2*sup_base_h,d=screw_m3);
    
    // Trous pour extrusion
    translate([-ex_h/2,0.25*sup_base_w,-1.5*sup_base_h])
    cylinder(2*sup_base_h,d=screw_d);
    
    translate([-ex_h/2,0.75*sup_base_w,-1.5*sup_base_h])
    cylinder(2*sup_base_h,d=screw_d);
    
    translate([-0.25*sup_base_h,0.25*sup_base_w,ex_h/2]) rotate([0,90,0])
    cylinder(2*sup_base_h,d=screw_d);
    
    translate([-0.25*sup_base_h,0.75*sup_base_w,ex_h/2]) rotate([0,90,0])
    cylinder(2*sup_base_h,d=screw_d);

}
