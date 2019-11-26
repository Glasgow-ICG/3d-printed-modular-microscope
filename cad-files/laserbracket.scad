//radius of laser hole
laserradius=11/2+0.2;
//height of beam-centre (from bottom of bases rail mount)
bhgt=30;
//rail dimensions   REMEMBER 3D PRINTER MAX PRINT SIZE
xdim=40;
ydim=15;
zdim=10;
//hole quality
quality=1000;

//LARGEN RAIL CAVITY SLIGHTLY

module laserbracket(){
difference(){
//main block
        hull(){
            translate([7.5,0,15])cube([20,40,19]);
            translate([7.5,0,0])cube([20,40,0.1]);
        }
    
//rail cavity
        translate([35/2-ydim/2,20,0]){
    rotate(270,[0,0,1]){
    translate([-22.5,ydim/3,-0.1]){
        cube([xdim+5,ydim/3,zdim/2+0.2]);
    }
    translate([-22.5,0,1/2*zdim]){
        cube([xdim+5,ydim,zdim/2]);
    }
    }
}
    
//laser cavity
    translate([35/2,42.5,bhgt]){
        translate([0,0,0]){
        rotate(90,[1,0,0]){
            cylinder(xdim+5,laserradius,laserradius,$fn=quality);
        }
    }
    }
    
    translate([0,5,20.1])cube([40,30,20]);
    
//secure bolt holes     M3 ROUGHLY
    translate([20,7.5,2.5])rotate(90,[0,1,0])cylinder(d=3.15,h=50,center=true,$fn=quality);
    translate([7,5,0.5])cube([2,5,5]);
    translate([26,5,0.5])cube([2,5,5]);
    translate([20,4*7.5,2.5])rotate(90,[0,1,0])cylinder(d=3.15,h=50,center=true,$fn=quality);
    translate([7,5.5*5,0.5])cube([2,5,5]);
    translate([26,5.5*5,0.5])cube([2,5,5]);
}
}
laserbracket();