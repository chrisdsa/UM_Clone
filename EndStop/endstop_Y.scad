

// switch hole distance
s_h_dist = 9.5;

// switch hole diameter
s_h_dia = 2+0.6;

// switch length
s_l = 20;

// switch height ( from extrusion)
s_h = 10;

width = 30;
length = 20;
height = 20;

thickness = 4;

switch_dist = 20;

// 2020 attach

difference(){
    
    cube([width,length,thickness]);
    hull(){
    translate([1/4*width,length*0.4,-0.5*thickness]) cylinder(2*thickness,d=5+0.6);
    translate([1/4*width,length*0.7,-0.5*thickness]) cylinder(2*thickness,d=5+0.6);
    }
    hull(){
    translate([3/4*width,length*0.4,-0.5*thickness]) cylinder(2*thickness,d=5+0.6);
    translate([3/4*width,length*0.7,-0.5*thickness]) cylinder(2*thickness,d=5+0.6);
    }
}

// Limit switch attach
translate([0,-switch_dist,-10 ])
difference(){
    translate([0,0,0]) cube([width,s_l,thickness]);
    hull(){
        translate([(s_h_dist+width)/2,thickness,-1]) 
        cylinder(thickness*1.5,d=s_h_dia);
        translate([(s_h_dist+width)/2,thickness+2,-1]) 
        cylinder(thickness*1.5,d=s_h_dia);
    }
    hull(){
        translate([(-s_h_dist+width)/2,thickness,-1])
        cylinder(thickness*1.5,d=s_h_dia);
        translate([(-s_h_dist+width)/2,thickness+2,-1])
        cylinder(thickness*1.5,d=s_h_dia);
    }
}

translate([0,-thickness/2,-s_h])
cube([width,thickness,s_h+thickness]);





