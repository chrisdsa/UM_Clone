// 90 degree bracket

$fn = 25;
length = 45;  // default 45
width = 100;
walls = 3;

rHole = 2.8;

// Connecteur AC
// 28x20
AC_width = 28 +0.8;
AC_height = 20+0.8;
AC_hole_dist = 40;
AC_hole_diam = 3+0.8;

// switch
sw_width = 13+0.8;
sw_width2 = 1.4+0.8;
sw_height = 28+0.8;
sw_height2 = 28+0.8;



rotate([90, 0, 0])
difference()
{
    cube([length, length, width], center=true);
    
    translate([2, 3, 0])
    cube([length, length, width-(walls * 2)], center=true);
    
    rotate([0,0,45])
    translate([length/2 + 3, 0, 0])
    cube([length, length + 20, width+2], center= true);
    
    // bottom screw holes
    translate([-10, -length/2 + 5, 0])
    rotate([90, 0, 0])
    #cylinder(r=rHole, h=10);

    translate([-10, -length/2 + 5, width/3])
    rotate([90, 0, 0])
    #cylinder(r=rHole, h=10);
    
    translate([-10, -length/2 + 5, -width/3])
    rotate([90, 0, 0])
    #cylinder(r=rHole, h=10);
    
    translate([15,0,0])
    #cube([30,50,100],true);
    
    // AC socket
    
    translate([-length/2+walls,0,-20]) rotate([90,90,0])
    #cube([AC_width,3*walls,AC_height],true);
    
    translate([-length/2-walls,0,AC_hole_dist/2-20]) rotate([90,0,90]) 
    #cylinder(3*walls,d=AC_hole_diam,true);
    translate([-length/2-walls,0,-AC_hole_dist/2-20]) rotate([90,0,90]) 
    #cylinder(3*walls,d=AC_hole_diam,true);    
    
    
    // Switch
    translate([-length/2+walls,0,25]) rotate([90,90,0])
    #cube([sw_width,3*walls,sw_height],true);
    
    translate([-length/2+walls,0,25]) rotate([90,90,0])
    #cube([sw_width2,3*walls,sw_height2],true);
    
    
    // side screw holes
    //translate([-length/2 - 5, length/2 - 8, 0])
    //rotate([0, 90, 0])
    //#cylinder(r=rHole, h=10);

    //translate([-length/2 - 5, -length/2 + 16, 0])
    //rotate([0, 90, 0])
    //#cylinder(r=rHole, h=10);
}