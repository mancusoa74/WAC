//render() difference() {
//    linear_extrude(height=25) square([55,76], center=true);
//    translate([0,0, 1.5]) linear_extrude(height=50) square([52,73], center=true);
//}

//render() union() {
//rotate([0,90,0]) linear_extrude(height=1) square([23,78], center=true);
//color("magenta") translate([-23,0,0]) rotate([0,90,0]) linear_extrude(height=1) square([23,78], center=true);
//color("red") translate([-11,0,11.5]) rotate([0,0,0]) linear_extrude(height=1) square([24,78], center=true);
//
//color("green") translate([-11,38,0.5]) rotate([-90,0,0]) linear_extrude(height=1) square([24,24], center=true);
//
//color("green") translate([-11,-39,0.5]) rotate([-90,0,0]) linear_extrude(height=1) square([24,24], center=true);
//
//
//color("pink") translate([-11,37,-11.5]) rotate([0,0,0]) linear_extrude(height=1) square([24,3], center=true);
//
//color("pink") translate([-11,-37.5,-11.5]) rotate([0,0,0]) linear_extrude(height=1) square([24,3], center=true);

//}

//render() difference() {
//color("red") linear_extrude(height=25) square([24,78], center=true);
//translate([0,0,1]) color("green") linear_extrude(height=23) square([22,76], center=true);
//}

pcb_w = 27;
pcb_h = 76;
battery_w = 21;
battery_h = 76;
thick = 1;
thick2 = 2;
height = 2;
pad = 4;

$fs= 0.5;

render() difference(){
color("green") translate([0,0]) linear_extrude(height=21.8) square([pcb_w+battery_w+3*pad,battery_h+pad+2*thick], center=false);

color("pink") translate([2,2]) linear_extrude(height=21) square([pcb_w+battery_w+3*pad-pad,battery_h+pad+2*thick-pad], center=false);
color("red") translate([15,64,10]) cylinder(25,2.46,2.46, false);
}

