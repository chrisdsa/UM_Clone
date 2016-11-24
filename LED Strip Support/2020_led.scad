$length = 180;
$width = 10;
$height = 11;
$angle = 30;

$nut_width = 3+0.8;
$nut_head_width = 5.4+0.8;
$nut_head_height = 3;
$nut_base = 2;

$tie = 3;

$fn = 50;

translate([0,-$width/2,0]) {
    difference() {
        union () {
            cube([$length,$width,$height]);
            rounding();
            translate([$length,$width,0]) rotate([0,0,180]) rounding();
        }
        translate ([-$width,0,$height]) rotate ([-$angle,0,0]) cube([$length+2*$width,$width*2,$width]);
        //for (i = [10:20:1000]) {
        //    translate ([i,$width+1,($nut_base+$nut_head_height)/2]) rotate ([90,0,0]) cylinder($width+2, $tie/2,$tie/2);
        //}
    }
}
rotate ([0,0,0])
    end();
translate([$length,0,0]) rotate ([0,0,180]) 
    end();

module rounding() {
    $s = $height-$nut_head_height-$nut_base;
    translate([-$s,0,$nut_base+$nut_head_height]) {
        difference() {
            cube ([$s,$width,$s]);
            translate([0,$width+1,$s]) rotate([90,0,0]) cylinder($width+2,$s,$s);
        }
    }
}

module end () {
    translate([-$width,0,0]) {
        difference() {
            union () {
                translate([0,0,0]) 
                    cylinder($nut_base+$nut_head_height,$width/2,$width/2);
                translate([0,-$width/2,0]) 
                    cube([$width, $width, $nut_base+$nut_head_height]);
            }
            translate([0,0,-1]) 
                cylinder($nut_base+$nut_head_height+2,$nut_width/2+0.2,$nut_width/2+0.2);
                        translate([0,0,$nut_base]) 
                cylinder($nut_head_height+1,$nut_head_width/2+0.2,$nut_head_width/2+0.2);

        }
    }
}