
$fn = 50;
difference(){
    union(){
        cube([20,75,75+20]);
    }
    translate([-5,0,4.5+20])rotate([50,0,0]) cube([30,120,75]);
    translate([2.5,-2.5,4.5+20]) cube([15,75,75]);
    translate([10,80,12+20]) rotate([90,0,0]) #cylinder(15,d=5+0.6);
    translate([10,80,39.5+20]) rotate([90,0,0]) #cylinder(15,d=5+0.6);
    translate([10,80,67+20]) rotate([90,0,0]) #cylinder(15,d=5+0.6);
    translate([10,80,10]) rotate([90,0,0]) #cylinder(85,d=11+0.4);
}
