//size of lens
lsize=25;
//cavity size
cav=10;
//edge thickness of lens
ethick=9;
//smoothness of the round sections
quality=1000;

module lens_ring_thick(){
//big
difference(){
    translate([0,0,cav/2-0.5]){
        cylinder(d=lsize+1.2,h=cav-0.4,$fn=quality,center=true);
    }
    
    translate([0,0,0]){
        cylinder(d=lsize-1.2,h=20,$fn=quality,center=true);
    }

    translate([0,0,10+cav-ethick-0.6]){
        cylinder(d=lsize+0.2,h=20,$fn=quality,center=true);
    }
}


//tab
translate([0,15,0.2]){
    difference(){
        hull(){
            translate([-5,-5,-0.5])cube([10,0.1,1]);
            translate([0,5,0])cylinder(d=10,h=1,$fn=quality,center=true);
        }
        translate([0,-15,-0.5])cylinder(d=lsize+1.2,h=10,$fn=quality,center=true);
    }
}

//small
difference(){
   translate([0,0,0]){
        cylinder(d=lsize+0.2,h=cav-ethick-0.2,$fn=quality,center=true);
    } 
    translate([0,0,0]){
        cylinder(d=lsize-1.2,h=20,$fn=quality,center=true);
    }
}
}
lens_ring_thick();