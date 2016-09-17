
// *************************************************************************
/*
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

// *************************************************************************

use <MCAD/polyholes.scad>;

// Box configuration
eps = 1.0;
wall_thickness         =   2.0;    // mm
box_external_length   = 81 + eps + wall_thickness * 2.0;    // mm
box_external_width    = 50 + eps + wall_thickness * 2.0;    // mm
box_external_height   =  5.0 + 2 * wall_thickness;    // mm
lid_tolerance          =   0.5;  // mm

// PCB mount configuration
// If pcb_mount_pos_vector set to describe mount positions then use this, if not set then rectangular with length pcb_mount_pitch_length and width pcb_mount_pitch_width
pcb_mount_pitch_length =  74.0;    // mm 
pcb_mount_pitch_width  =  43.0;    // mm
pcb_mount_pos_vec      = [[0,0],[0,43.0],[74.0, 35.0],[74.0, 0]];
pcb_mount_radius       =   1.5;  // mm
pcb_mount_height       =   4.0;    // mm
pcb_mount_insert_depth =   4;    // mm
pcb_mount_origin       = [(box_external_length - pcb_mount_pitch_length) - wall_thickness * 2.0, (box_external_width - pcb_mount_pitch_width) / 2.0]; // mm
pcb_mount_captive_nut_recess_radius = pcb_mount_radius * 2.0;
pcb_mount_captive_nut_recess_depth = 2.40 + 0.5;  // M3 nut plus 0.25mm fudge factor (each end)
pcb_mount_auto_centre  = true;
pcb_mount_captive_nut  = true;

// Lid mount configuration
lid_mount = false;
lid_mount_pitch_length =  box_external_length - wall_thickness * 2.0 - 10;   // mm
lid_mount_pitch_width  =  box_external_width - wall_thickness * 2.0 - 10;   // mm
lid_mount_radius       =   1.5;  // mm
lid_mount_height       =   box_external_height  - wall_thickness * 3.0;    // mm
lid_mount_insert_depth =   9.7;    // mm
lid_mount_origin       = [(box_external_length - lid_mount_pitch_length) / 2.0 + 5.0/* - (lid_mount_radius * 2.0 )*/, (box_external_width - lid_mount_pitch_width) / 2.0]; // mm
lid_hole_countersink = false;
lid_mount_auto_centre  = true;

// Mains socket?
mains_socket = false;
mains_socket_width = 28.5;  // mm
mains_socket_height = 20.5;  // mm
mains_socket_mount_pitch = 40.0; //mm
mains_socket_mount_d = 4.0;  //mm

// grommet?
grommet = false;
grommet_type = "rectangular";
grommet_width =  8.25;  // mm
grommet_height =  5.25;  // mm

// Screw holes throught the base ?
base_mount_holes = true;
base_mount_holes_pos_vec = [[0, 0], [25.4, 0]];
base_mount_holes_origin = [(box_external_length - 25.4) / 2.0/* - (lid_mount_radius * 2.0 )*/, (box_external_width - 0) / 2.0]; // mm;
base_mount_holes_radius  = 2.6;


// Style configuration
corner_style    = "rounded";  // only style currently available
rounding_radius = wall_thickness;
cylinder_faces  = 30;

logo           = false;
// Logo configuration
logo_thickness     =  2.5;
logo_size          = 30;
logo_corner_radius =  6;
logo_hole_radius   =  2;
logo_fn            = 30;
logo_origin        = [ 30, 20 ]; //mm

// Compute the expensive, albeit elegant Minkowski Sum 
// to generate the rounded box corners
use_minkowski = false;

use <../../SoMakeIt-Keyring/logo.scad>

union() {
           //!cylinder(r = 3.0 / cos(180 / 6), h = 3, $fn = 6);     
    // The lid
    %difference() {
        union() {
            translate ([wall_thickness + lid_tolerance,
                        wall_thickness + lid_tolerance,
                        box_external_height - 2.0 * wall_thickness]) {
                color("SeaGreen", a = 0.5) {
                    rounded_box(box_external_length - 2.0 * wall_thickness - 2.0 * lid_tolerance,
                                box_external_width - 2.0 * wall_thickness - 2.0 * lid_tolerance,
                                wall_thickness, rounding_radius);
                }
            }
            
            translate([0, 0, box_external_height - wall_thickness]) {
                rounded_box(box_external_length,
                        box_external_width,
                        wall_thickness, rounding_radius);
            }
            
            if (logo == true) {
                translate ([logo_origin[0], logo_origin[1], box_external_height]) {
                    somakeit_logo(logo_thickness, logo_size,
                                    logo_corner_radius, logo_hole_radius,
                                    logo_fn);
                }
            }
        }
        // The lid screw holes and countersinks
        if (lid_mount == true) {
            translate([0, 0, box_external_height - 1.0 * wall_thickness]) translate (lid_mount_origin) { 
                screw_holes(lid_mount_pitch_length,
                              lid_mount_pitch_width,
                              "undef",    // TODO: sort this horrible hack out by naming arguments
                              lid_mount_radius,
                              wall_thickness,
                              lid_hole_countersink);
            }
        }
        
        translate ([wall_thickness * 2.0 + lid_tolerance,
                        wall_thickness * 2.0 + lid_tolerance,
                        box_external_height - 2.0 * wall_thickness]) {
                color("SeaGreen", a = 0.5) {
                    rounded_box(box_external_length - 4.0 * wall_thickness - lid_tolerance,
                                box_external_width - 4.0 * wall_thickness - lid_tolerance,
                                wall_thickness, rounding_radius);
                }
            }
    }
    
    // The main body of the box
    difference() {
        rounded_box(box_external_length,
                    box_external_width,
                    box_external_height - wall_thickness,
                    rounding_radius);
    
        translate ([wall_thickness, wall_thickness, wall_thickness]) {
            rounded_box(box_external_length - 2.0 * wall_thickness,
                        box_external_width - 2.0 * wall_thickness,
                        box_external_height - 2.0 * wall_thickness,
                        rounding_radius);
        }
        
        // Mains socket cutout
        if (mains_socket) {
            union() {
                translate([wall_thickness / 2.0 - 1.0, box_external_width / 2.0, box_external_height / 2.0]) {
                    cube([wall_thickness + 2.0, mains_socket_width, mains_socket_height], center=true);
                    translate ([-wall_thickness / 2.0, -mains_socket_mount_pitch / 2.0, 0]) rotate([0,90,0]) polyhole(d = mains_socket_mount_d, h = wall_thickness + 2.0);
                    translate ([-wall_thickness / 2.0, mains_socket_mount_pitch / 2.0, 0]) rotate([0,90,0]) polyhole(d = mains_socket_mount_d, h = wall_thickness + 2.0);
                }
            }
        }
        
        if (grommet) {
            if (grommet_type == "rectangular") {
                translate([box_external_length - wall_thickness / 2.0 + 1.0, box_external_width / 2.0, wall_thickness + 12.0]) {
                    cube([wall_thickness + 2.0, grommet_width, grommet_height], center=true);
                }
            }
        }
        
        // Base mount holes
        if (base_mount_holes)  {
            translate (base_mount_holes_origin) { 
                    screw_holes(pcb_mount_pitch_length,
                                pcb_mount_pitch_width,
                                base_mount_holes_pos_vec,
                                base_mount_holes_radius,
                                wall_thickness,
                                true);
            }
        }
        
               // PCB mount nut recesses
        if (pcb_mount_captive_nut) {
            if (pcb_mount_auto_centre) {
                pcb_mount_origin = [ (box_external_length - pcb_mount_pitch_length) / 2.0, (                box_external_width - pcb_mount_pitch_width) / 2.0];

                translate (pcb_mount_origin) translate([0,0,pcb_mount_captive_nut_recess_depth / 2.0]) { 
                    captive_nut_recess(pcb_mount_pitch_length,
                                        pcb_mount_pitch_width,
                                        pcb_mount_pos_vec,
                                        pcb_mount_captive_nut_recess_radius,
                                        pcb_mount_captive_nut_recess_depth + 1.0);
                }
            } else {
                translate (pcb_mount_origin) translate([0,0,pcb_mount_captive_nut_recess_depth / 2.0]) { 
                    captive_nut_recess(pcb_mount_pitch_length,
                                        pcb_mount_pitch_width,
                                        pcb_mount_pos_vec,
                                        pcb_mount_captive_nut_recess_radius,
                                        pcb_mount_captive_nut_recess_depth + 1.0);
                
                }
            }
          
        }
        
    }
     // The PCB mounts
     if (pcb_mount_auto_centre) {
        pcb_mount_origin = [ (box_external_length - pcb_mount_pitch_length) / 2.0, (box_external_width - pcb_mount_pitch_width) / 2.0];
         translate (pcb_mount_origin) { 
            screw_mount(pcb_mount_pitch_length,
                        pcb_mount_pitch_width,
                        pcb_mount_pos_vec,
                        pcb_mount_radius,
                        pcb_mount_height,
                        pcb_mount_insert_depth);
         }
    } else {
        translate (pcb_mount_origin) { 
            screw_mount(pcb_mount_pitch_length,
                        pcb_mount_pitch_width,
                        pcb_mount_pos_vec,
                        pcb_mount_radius,
                        pcb_mount_height,
                        pcb_mount_insert_depth);
        }
    }
    
    // The lid screw mounts
    if (lid_mount == true) {
        if (lid_mount_auto_centre) {
            lid_mount_origin = [ (box_external_length - lid_mount_pitch_length) / 2.0, (box_external_width - lid_mount_pitch_width) / 2.0];
            translate (lid_mount_origin) { 
                screw_mount(lid_mount_pitch_length,
                              lid_mount_pitch_width,
                              lid_mount_radius,
                              lid_mount_height,
                              lid_mount_insert_depth);
             }
        } else {
            translate (lid_mount_origin) { 
                screw_mount(lid_mount_pitch_length,
                              lid_mount_pitch_width,
                              lid_mount_radius,
                              lid_mount_height,
                              lid_mount_insert_depth);
            }
        }
    }
}


module rounded_box(length, width, height, r) {

    if (use_minkowski) {
        
        minkowski() {

            cylinder(r = wall_thickness, h = 1);

            cube(size=[ length - wall_thickness,
                        width - wall_thickness,
                        height ], center = false);

        }
        
    } else {
        
        hull() {
            translate([r,r,0]) cylinder(r = r, h = height, $fn = cylinder_faces);
            translate([length-r,r,0]) cylinder(r = r, h = height, $fn = cylinder_faces);
            translate([length-r,width-r,0]) cylinder(r = r, h = height, $fn = cylinder_faces);
            translate([r,width-r,0]) cylinder(r = r, h = height, $fn = cylinder_faces);
        }
    }

}

// TODO: convert to polyhole()
module mount_hole(radius, height, insert_depth) {

    width = 2.0; // mm

    difference() {
        cylinder(r = radius + width, h = height, center = true, $fn = cylinder_faces);
        translate([0, 0, (height - insert_depth) / 2.0]) cylinder(r = radius, h = insert_depth, center = true, $fn = cylinder_faces);
        
    }

}

// TODO: convert to polyhole()
module screw_hole(radius, height, cs) {

    cs_r = 2.0; // mm
    cs_h = 2.0; // mm

    union() {
        if (cs == true) {
            cylinder(r1 = radius, r2 = radius + cs_r, h = cs_h, center = true, $fn = cylinder_faces);
        }
        cylinder(r = radius, h = height, center = true, $fn = cylinder_faces);
    }

}

module screw_mount(pitch_length, pitch_width, pos_vec = "undef", radius, height, insert_depth) {
 
    translate([0, 0, height / 2.0 + wall_thickness]) {
        union () {
            if (pos_vec == "undef") {
                
                    for (i = [0:1]) {
                        for (j = [0:1]) {
                            translate([j * pitch_length, i * pitch_width, 0]) {
                                mount_hole(radius, height, insert_depth);
                            }
                        }
                    }
               
            } else {
                for (i = pos_vec) {
                    translate([i[0], i[1], 0]) {
                        mount_hole(radius, height, insert_depth);
                    }
                }
            }
        }
    }
    
}

module captive_nut_recess(pitch_length, pitch_width, pos_vec = "undef", radius, height) {
 
    n = 6;
    
        union () {
            if (pos_vec == "undef") {
                
                    for (i = [0:1]) {
                        for (j = [0:1]) {
                            translate([j * pitch_length, i * pitch_width, 0]) {
                                cylinder(r = radius / cos(180 / n), h = height, $fn = n, center = true);
                            }
                        }
                    }
               
            } else {
                for (i = pos_vec) {
                    translate([i[0], i[1], 0]) {
                        cylinder(r = radius / cos(180 / n), h = height, $fn = n, center = true);
                    }
                }
            }
        }
  
}

module screw_holes(pitch_length, pitch_width, pos_vec = "undef", radius, height, cs = false) {
 
    translate([0, 0, height / 2.0]) {
        union() {
            if (pos_vec == "undef") {
                for (i = [0:1]) {
                    for (j = [0:1]) {
                        translate([j * pitch_length, i * pitch_width, 0]) {
                            screw_hole(radius, height, cs);
                        }
                    }
                }
            } else {
                for (i = pos_vec) {
                    translate([i[0], i[1], 0]) {
                        screw_hole(radius, height, cs);
                    }
                }
            }
        }
    }
    
}
