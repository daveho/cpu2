// Breadboard retention clip: top part

// All units in mm

base_h = 9.525;      // 3/8 in
base_l = 3 * 6.35;   // 3/4 in
base_w = base_h - 1.5875; // 5/16 in

fudge = 0.02;

hole_r = 3.175/2;     // 1/8" diameter

// adjustment to give the rail some space to fit in the guide
// slots in the base
fit = (1.5875/6);

guide = 1.5875;      // 1/16 in, minus the "fit" adjustment

// overhang amount
overhang = 3.175;

// thickness of top piece
top_h = 3.175; // 1/8 in

module guide(extra_w, dx) {
    translate([-guide/2+dx, -base_w/2-fudge, 0])
        cube([guide+extra_w, base_w+2*fudge, guide+fudge]);
}

module screw_hole() {
    // screw hole    
    cylinder(r=hole_r, h=top_h + 2*fudge);
}

module plate() {
    color("olive")
    difference() {
        translate([-base_l/2, -base_w/2-overhang, 0])
            cube([base_l, base_w+overhang, top_h]);

        translate([-base_l/4, 0, -fudge]) screw_hole();

        translate([base_l/4, 0, -fudge]) screw_hole();
    }
}

module top() {
    plate();

    // center guide
    translate([0, 0, top_h]) guide(-fit, fit/2);
    
    // left guide
    translate([-base_l/2 + guide/2, 0, top_h]) guide(-fit, fit/2);
    
    // right guide
    translate([base_l/2 - guide/2, 0, top_h]) guide(-fit, fit/2);
}

$fn = 60;

//guide(0, 0);

//plate();

top();