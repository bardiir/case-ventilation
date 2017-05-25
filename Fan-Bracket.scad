screw_distance = 32;
screw_diameter = 3.2;
plate_thickness = 5;

nut_size = 5.5;

fan_screw_distance = 72;
fan_size = 81;
fan_thickness = 25.5;
fan_distance = 5;

difference() {
    hull() {
        //schraubenlöcher/basisplatte
        translate([-screw_distance/2,-screw_distance/2,0])
        cylinder($fn=100, d=screw_diameter+2, h=plate_thickness);
        translate([screw_distance/2,-screw_distance/2,0])
        cylinder($fn=100, d=screw_diameter+2, h=plate_thickness);
        translate([-screw_distance/2,screw_distance/2,0])
        cylinder($fn=100, d=screw_diameter+2, h=plate_thickness);
        translate([screw_distance/2,screw_distance/2,0])
        cylinder($fn=100, d=screw_diameter+2, h=plate_thickness);
        
        //lüfter-gehäuse
        translate([-(fan_size/2),-(fan_size/2),plate_thickness+fan_distance])
        cube([fan_size+4,fan_size+4,fan_thickness]);
    }
    
    //schraubenlöcher
    translate([-screw_distance/2,-screw_distance/2,0])
    cylinder($fn=100, d=screw_diameter, h=plate_thickness); 
    translate([screw_distance/2,-screw_distance/2,0])
    cylinder($fn=100, d=screw_diameter, h=plate_thickness);
    translate([-screw_distance/2,screw_distance/2,0])
    cylinder($fn=100, d=screw_diameter, h=plate_thickness);
    translate([screw_distance/2,screw_distance/2,0])
    cylinder($fn=100, d=screw_diameter, h=plate_thickness);
    
    //mutterhalterungen
    translate([-screw_distance/2,-screw_distance/2,1])
    cylinder($fn=6, d=nut_size, h=plate_thickness);
    translate([screw_distance/2,-screw_distance/2,1])
    cylinder($fn=6, d=nut_size, h=plate_thickness);
    translate([-screw_distance/2,screw_distance/2,1])
    cylinder($fn=6, d=nut_size, h=plate_thickness);
    translate([screw_distance/2,screw_distance/2,1])
    cylinder($fn=6, d=nut_size, h=plate_thickness);
    
    //innenraum
    hull() {
        translate([0,0,3])
        cylinder($fn=100, d=screw_distance, h=plate_thickness);
        
        translate([2-(fan_size/2),2-(fan_size/2),plate_thickness+fan_distance])
        cube([fan_size,fan_size,fan_thickness]);
    }
    
    //luftloch
    cylinder($fn=100, d=screw_distance, h=plate_thickness);
    
    //kabelkanal
    translate([-(fan_size/2),15,plate_thickness+fan_distance+fan_thickness-2])
    cube([2,4,2]);
    translate([-(fan_size/2),15,plate_thickness+fan_distance-2])
    cube([1,4,fan_thickness]);
}