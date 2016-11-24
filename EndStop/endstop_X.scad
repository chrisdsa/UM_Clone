

// switch hole distance
s_h_dist = 9.5;

// switch hole diameter
s_h_dia = 2+0.6;

// switch length
s_l = 20;
offset = 5;

width = 30;
length = 20;
height = 20;

thickness = 4;

// 2020 attach

difference(){
    translate([0,0,-20])
    cube([width,thickness,20]);
    translate([1/4*width,5,-10]) rotate([90,0,0])#cylinder(2*thickness,d=5+0.6);
    translate([3/4*width,5,-10]) rotate([90,0,0])#cylinder(2*thickness,d=5+0.6);
}

// Limit switch attach
translate([length/2,0,0]) cube([width/3,thickness*0.75,5]);
translate([0,0,offset])
difference(){
    translate([length/2,0,0]) cube([width/3,thickness*0.75,s_l]);
    translate([length/2+width/6,thickness,(s_l+4+s_h_dist)/2]) rotate([90,0,0]) 
    cylinder(thickness*1.5,d=s_h_dia);
    translate([length/2+width/6,thickness,(s_l+4-s_h_dist)/2]) rotate([90,0,0]) 
    cylinder(thickness*1.5,d=s_h_dia);
}