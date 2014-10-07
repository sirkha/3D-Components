pins=50;
pitch=0.5;
a=(pins-1)/2;
b=a+1.15;
c=a+4.8;
d=a+6;
color("Silver") {
    for ( x = [pitch/2 : pitch : pitch*pins/2]) {
        translate([x,-1.5,0]){
            rotate([90,0,-90]){
                linear_extrude(height=0.2, center=true){
                    import("pin.dxf");
                }
            }
        }
        translate([-x,-1.5,0]){
            rotate([90,0,-90]){
                linear_extrude(height=0.2, center=true){
                    import("pin.dxf");
                }
            }
        }
    }
    difference(){
        translate([((b+c)/4+.01),-3,1]){
            cube([(c-b)/2,4,2], center=true);
        }
        translate([(b+c-.05)/4,-2.95,1]){
            cube([(c-.05-b)/2,4,1.95], center=true);
        }
    }
    difference(){
        translate([-((b+c)/4+.01),-3,1]){
            cube([(c-b)/2,4,2], center=true);
        }
        translate([-(b+c-.05)/4,-2.95,1]){
            cube([(c-.05-b)/2,4,1.95], center=true);
        }
    }
}
color("Beige") {
    translate([0,-2.5,1.86]){
        cube([b,5,0.28], center=true);
    }
    translate([0,-4,.825]){
        cube([b,0.82,0.45], center=true);
    }
    translate([0,-3.05,.19]){
        cube([b,3,0.28], center=true);
    }
    for ( x = [0 : pitch : pitch*((pins+1)/2)]) {
        translate([x,-4.3,1]){
            cube([pitch-0.2, 1.5,1.6], center=true);
        }
        translate([-x,-4.3,1]){
            cube([pitch-0.2, 1.5,1.6], center=true);
        }
    }
    difference(){
        translate([-(b+c-.05)/4,-2.95,1]){
            cube([(c-.05-b)/2,4,1.95], center=true);
        }
        translate([-(b/2+0.5-.01),-1.7,1]){
            cube([1,3.4,1.3], center=true);
        }
    }
    difference(){
        translate([(b+c-.05)/4,-2.95,1]){
            cube([(c-.05-b)/2,4,1.95], center=true);
        }
        translate([(b/2+0.5-.01),-1.7,1]){
            cube([1,3.4,1.3], center=true);
        }
    }
}
color("Black") {
    translate([0,0,0]){
        translate([0,0,0.1]){
                rotate([90,0,-90]){
                    linear_extrude(height=b+2, center=true){
                        import("slider.dxf");
                    }
                }
        }
        translate([(d+b)/4,-0.5,1]){
            cube([(d-b)/2,1,1.8], center=true);
        }
        translate([-(d+b)/4,-0.5,1]){
            cube([(d-b)/2,1,1.8], center=true);
        }
        translate([b/2+0.5-.01,-1.7,1]){
            cube([1,3.4,1], center=true);
        }
        translate([-(b/2+0.5-.01),-1.7,1]){
            cube([1,3.4,1.3], center=true);
        }
    }
}