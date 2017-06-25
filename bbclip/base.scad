// Breadboard retention clip: base part

// All units in mm

base_h = 9.525;      // 3/8 in
base_l = 3 * 6.35;   // 3/4 in
base_w = base_h - 1.5875; // 5/16 in

fudge = 0.02;

hole_r = 3.175/2;     // 1/8" diameter

guide = 1.5875;      // 1/16 in

module body() {
    translate([-base_l/2, -base_w/2, 0])
        cube([base_l, base_w, base_h]);
}

module screw_hole() {
    // screw hole    
    cylinder(r=hole_r, h=base_h + 2*fudge);
}

module guide(extra_w, dx) {
    translate([-guide/2+dx, -base_w/2-fudge, 0])
        cube([guide+extra_w, base_w+2*fudge, guide+fudge]);
}

module base() {
    difference() {
        body();

        translate([-base_l/4, 0, -fudge]) screw_hole();

        translate([base_l/4, 0, -fudge]) screw_hole();
        
        // center guide
        translate([0, 0, base_h-guide]) guide(0, 0);
        
        // left guide
        translate([-base_l/2 + guide/2, 0, base_h-guide]) guide(fudge, -fudge);
        
        // right guide
        translate([base_l/2 - guide/2, 0, base_h-guide]) guide(fudge, 0);
    }
}

$fn = 60;

base();

// base_h-guide

//guide();
