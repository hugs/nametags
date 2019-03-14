// Dependencies:
// Font: https://www.google.com/fonts/specimen/Allerta+Stencil

use <font/Allerta_Stencil/AllertaStencil-Regular.ttf>

///////////////////////////////
// Change the following options:
name = "tapster";
nametag_font_size = 14;
nametag_width = 8*11;
///////////////////////////////

// You "shouldn't" need to change anything below:
$fn = 60;
beam_width    = 8;
hole_diameter = 5.1;
hole_radius   = hole_diameter / 2;
number_of_holes = 10;
dimensions=[nametag_width,8*4,4];

difference() {
    cube(dimensions,center=true);

    translate([0,0,-4])
    linear_extrude( height = 10 ) {
        text(name,
            size = nametag_font_size,
            font = "Allerta Stencil",
            halign = "center",
            valign = "center",
            $fn = 60);
    }

    translate([-nametag_width/2+4,-16,-7])
    rotate([0,0,90])
    holes(4);

    translate([nametag_width/2-4,-16,-7])
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