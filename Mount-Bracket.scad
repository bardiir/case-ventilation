screw_distance = 32;
screw_diameter = 3.2;
plate_thickness = 5;

difference() {
    hull() {
        cylinder($fn=100, d=screw_diameter+2, h=plate_thickness);
        
        translate([screw_distance,0,0])
        cylinder($fn=100, d=screw_diameter+2, h=plate_thickness);
        
        translate([0,screw_distance,0])
        cylinder($fn=100, d=screw_diameter+2, h=plate_thickness);
        
        translate([screw_distance,screw_distance,0])
        cylinder($fn=100, d=screw_diameter+2, h=plate_thickness);
    }
    
    cylinder($fn=100, d=screw_diameter, h=plate_thickness);
        
    translate([screw_distance,0,0])
    cylinder($fn=100, d=screw_diameter, h=plate_thickness);
    
    translate([0,screw_distance,0])
    cylinder($fn=100, d=screw_diameter, h=plate_thickness);
    
    translate([screw_distance,screw_distance,0])
    cylinder($fn=100, d=screw_diameter, h=plate_thickness);
    
    translate([screw_distance/2,screw_distance/2,0])
    cylinder($fn=100, d=screw_distance, h=plate_thickness);
}