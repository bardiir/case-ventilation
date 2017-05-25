fan_box_size = 86;
fan_box_height = 20;

filter_d = 76;
filter_h = 33;

difference() {
    hull() {
        cube([fan_box_size+4,fan_box_size+4,fan_box_height], center=true);
        translate([0,0,fan_box_height])
        cylinder($fn=100, d=filter_d+4, h=filter_h+2);
    }
    
    hull() {
        cube([fan_box_size,fan_box_size,fan_box_height], center=true);
        translate([0,0,fan_box_height])
        cylinder($fn=100, d=filter_d, h=1);
    }

    translate([0,0,fan_box_height])
    cylinder($fn=100, d=filter_d, h=filter_h);
    
    translate([0,0,fan_box_height+filter_h])
    cylinder($fn=100, d=filter_d-5, h=2);
}
