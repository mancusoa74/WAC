pcb_w = 27;
pcb_h = 76;
battery_w = 21;
battery_h = 76;
thick = 1;
thick2 = 2;
height = 2;
pad = 4;

render() union() {
color("red") linear_extrude(height=0.8*thick) square([pcb_w+pad+2*thick,pcb_h+pad+2*thick], center=false);
color("yellow") translate([pcb_w+pad+2*thick, 0]) linear_extrude(height=0.8*thick) square([battery_w+pad+2*thick,battery_h+pad+2*thick], center=false);

render() difference() {
color("magenta") translate([pad/2,pad/2,0]) linear_extrude(height=4*thick) square([pcb_w+2*thick,pcb_h+2*thick], center=false);
color("yellow") translate([(pad/2)+thick,(pad/2)+thick,height/1.5]) linear_extrude(height=4*thick) square([pcb_w,pcb_h], center=false);
}
render() difference() {
color("green") translate([pcb_w+pad+4*thick,pad/2,0]) linear_extrude(height=4*thick) square([battery_w+2*thick,battery_h+2*thick], center=false);
color("yellow") translate([pcb_w+pad+5*thick,pad/2+thick,height/1.5]) linear_extrude(height=4*thick) square([battery_w,battery_h], center=false);
}
}

