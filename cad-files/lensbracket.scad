//rail dimensions   REMEMBER 3D PRINTER MAX PRINT SIZE
xdim=40;
ydim=15;
zdim=10;
//lens diameter
ldi=25;
//view hole size
vsize=21;
//height of beam-centre (from bottom of bases rail mount)
bhgt=30;
//hole quality
quality=1000;

//LARGEN RAIL CAVITY SLIGHTLY

module lensbracket(){
difference(){
//main block
        hull(){
            translate([0,0,15])cube([35,15,15]);
            translate([5,0,0])cube([25,15,0.1]);
        }
    
//rail cavity
        translate([35/2-ydim/2,20,0]){
    rotate(270,[0,0,1]){
    translate([0,ydim/3,-0.1]){
        cube([xdim,ydim/3,zdim/2+0.2]);
    }
    translate([0,0,1/2*zdim]){
        cube([xdim,ydim,zdim/2]);
    }
    }
}
    
//lens cavity
    translate([35/2,7.5,bhgt]){
        translate([-vsize/2-0.75,-7.6,-25/2+1]){
                    cube([vsize+1.5,15.2,25]);
                }
        rotate(90,[1,0,0])cylinder(d=ldi+0.3+1.2,h=10.5,center=true,$fn=quality);
    }
    
//secure bolt holes     M3 ROUGHLY
    translate([20,7.5,2.5])rotate(90,[0,1,0])cylinder(d=3.15,h=50,center=true,$fn=quality);
    translate([3,5,0.5])cube([2,5,5]);
    translate([30,5,0.5])cube([2,5,5]);
}
}
lensbracket();