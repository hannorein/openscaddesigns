module complete(){
    difference(){
        union(){ 
            difference(){
                cube([48,48,16]);
                union(){
                    translate([2,2,2]) cube([43,36,12]);
                    translate([2+7,2+3,14]) cube([26,9,2]);
                    translate([2,2,2]) cube([44,44,12]);
                    translate([17,0,0]) cube([14,2,7]);
                }
            }
            cube([12,48,10]);
            translate([0,38,2]) cube([48,10,2]);
            difference(){
                translate([45,25,2]) cylinder(h=2,d=6,$fn=20);
                translate([2,2,2]) cube([42,36,12]);
            }
            translate([45,25,11]) cylinder(h=3,d=6,$fn=20);
            translate([6,25,11]) cylinder(h=3,d=6,$fn=20);
        }
        union(){
             translate([6,25,0]) cylinder(h=2,d=4,$fn=20);
             translate([45,25,0]) cylinder(h=2,d=4,$fn=20);
             translate([45,25,2]) cylinder(h=2,d=2,$fn=20);
             translate([6,25,2]) cylinder(h=8,d=2,$fn=20);
             translate([45,25,11]) cylinder(h=3,d=1,$fn=20); 
             translate([6,25,11]) cylinder(h=3,d=1,$fn=20); 
        }
    }
};

intersection(){
    complete();
    union(){
        translate([2,2,11]) cube([44,44,5]);
        translate([2,0,0]) cube([44,2,16]);

    }
}

translate([54,0,0]){
    union(){
        difference(){
            complete();
            union(){
                translate([2,2,11]) cube([44,44,5]);
                translate([2,0,0]) cube([44,2,16]);
            }
        }
        translate([0,44,0]) cube([4,4,14]);
        translate([44,44,0]) cube([4,4,14]);
        translate([0,17,]) cube([4,2,14]);
        translate([44,17,0]) cube([4,2,14]);        
    }
}
