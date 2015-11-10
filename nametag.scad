// Dependencies:
// https://github.com/brodykenrick/text_on_OpenSCAD
// Font: https://www.google.com/fonts/specimen/Allerta+Stencil

use <lib/text_on.scad>

beam_width    = 8;
hole_diameter = 5.1;
hole_radius   = hole_diameter / 2;
number_of_holes = 10;
dimensions=[8*9,8*4,4];


difference() {
    cube(dimensions,center=true);
    text_on_cube(t="Owen",
             size=14,
             cube_size=[80,20,4],
             extrusion_height=10,
             face="top", 
             font="Allerta Stencil",
             h=50);
    
	translate([-32,-16,-7])
	rotate([0,0,90])
	holes(4);   
   
	translate([32,-16,-7])
	rotate([0,0,90])
	holes(4);    
}


module holes(number_of_holes) {
    beam_length = number_of_holes * 8;
    for (x=[beam_width : beam_width : beam_length]) {
        translate([x-4,0,2])
        cylinder(r=hole_radius, h=12, $fn=30);
    }
}