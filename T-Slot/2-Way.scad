// Pour Extrusion 2020
// M5*10mm + T-nuts


height = 4.4;
width = 20;
lenght = 40; // 3 hole : 40, 5 hole : 60
tolerance = 1;
screw_d = 5+tolerance;

difference(){
    union(){
        cube([width,lenght,height]);
        rotate([0,0,270]) translate([-width,0,0]) cube([width,lenght,height]);
    }
    union(){
        translate([width/2,width/2,-height]) cylinder(3*height,d=screw_d,true);
        translate([3*width/2,width/2,-height]) cylinder(3*height,d=screw_d,true);
        //translate([5*width/2,width/2,-height]) cylinder(3*height,d=screw_d,true);
        translate([width/2,3*width/2,-height]) cylinder(3*height,d=screw_d,true);
        //translate([width/2,5*width/2,-height]) cylinder(3*height,d=screw_d,true);
    }
}