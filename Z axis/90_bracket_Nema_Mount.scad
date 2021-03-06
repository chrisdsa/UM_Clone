// 90 degree bracket

$fn = 25;
length = 25;  // default 45
width = 20;
walls = 3;

rHole = 2.8;

rotate([90, 0, 0])
difference()
{
    cube([length, length, width], center=true);
    
    translate([4, 4, 0])
    cube([length, length, width-(walls * 2)], center=true);
    
    rotate([0,0,45])
    translate([length/2 + 3, 0, 0])
    cube([length, length + 20, width+2], center= true);
    
    // bottom screw holes
    translate([-1, -length/2 + 5, 0])
    rotate([90, 0, 0])
    #cylinder(r=rHole, h=10);

    translate([0, -length/2 + 5, 0])
    rotate([90, 0, 0])
    #cylinder(r=rHole, h=10);
    
    translate([1, -length/2 + 5, 0])
    rotate([90, 0, 0])
    #cylinder(r=rHole, h=10);
    
    
    // side screw holes
    translate([-length/2 - 5, length/2 - 8, 0])
    rotate([0, 90, 0])
    #cylinder(r=rHole, h=10);

    translate([-length/2 - 5, -length/2 + 16, 0])
    rotate([0, 90, 0])
    #cylinder(r=rHole, h=10);
}