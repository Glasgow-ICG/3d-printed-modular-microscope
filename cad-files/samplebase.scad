//width of the base
basewidth=60;


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

module sample_base(){
    difference(){
//bottom
    hull(){
            translate([-30/2,0,15])cube([30,30,25]);
            translate([-25/2,0,0])cube([25,30,0.1]);
        }

//chamber
translate([0,0,30]){
translate([-basewidth/4+5,-5,-12.5]){
    cube([basewidth/2-10,basewidth/2+10,25]);
}
translate([-basewidth/4-5,5,-12.5]){
    cube([basewidth/2,basewidth/2-10,25]);
}
}
//rail cavity
    translate([-ydim/2,35,0]){
    rotate(270,[0,0,1]){
    translate([0,ydim/3,-0.1]){
        cube([xdim,ydim/3,zdim/2+0.2]);
    }
    translate([0,0,1/2*zdim]){
        cube([xdim,ydim,zdim/2]);
    }
    }
}
//secure bolt holes     M3 ROUGHLY
    translate([-18,0,0]){
        translate([20,7.5,2.5])rotate(90,[0,1,0])cylinder(d=3.15,h=50,center=true,$fn=quality);
    translate([4,5,0.5])cube([2,5,5]);
    translate([30,5,0.5])cube([2,5,5]);
    }
    translate([-18,15,0]){
        translate([20,7.5,2.5])rotate(90,[0,1,0])cylinder(d=3.15,h=50,center=true,$fn=quality);
    translate([4,5,0.5])cube([2,5,5]);
    translate([30,5,0.5])cube([2,5,5]);
    }
    
}
}
sample_base();