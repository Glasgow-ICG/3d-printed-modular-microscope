//circle quality
quality=1000;
//base dimensions   REMEMBER 3D PRINTER MAX PRINT SIZE
xdim=160;
ydim=160;
zdim=5;
//distance between pins
gap=20;

module baseboard(){
    
//base section
    difference(){
    translate([0,0,0]){
        cube([xdim,ydim,zdim]);
    }
    //joint cutout
    translate([-0.1,ydim/2-5.5/2,-0.1])cube([18.1,5+0.5,zdim+0.2]);
    translate([13-0.25,ydim/2-7.6,-0.1])cube([5+0.5,15+0.2,zdim+0.2]);
    rotate(90,[0,0,1])translate([0,-ydim,0]){
        translate([-0.1,ydim/2-5.5/2,-0.1])cube([18.1,5+0.5,zdim+0.2]);
        translate([13-0.25,ydim/2-7.6,-0.1])cube([5+0.5,15+0.2,zdim+0.2]);
        }
    }
    
//pins section
    translate([0,0,3/2*zdim]){
        for(t=[1:8]){
        for(u=[1:8]){
            translate([t*gap-10,u*gap-10,0]){
            cylinder(d=5,h=zdim,center=true,$fn=quality);
            }
        }
    }
    }
    
    //joint
    translate([xdim-0.1,ydim/2-4.9/2,-0.1])cube([18.1,4.9,zdim+0.2]);
    translate([xdim+13.05,ydim/2-7.45,-0.1])cube([4.9,14.9,zdim+0.2]);
    rotate(90,[0,0,1])translate([xdim,-ydim,0]){
        translate([-0.1,ydim/2-5/2,-0.1])cube([18.1,5,zdim+0.2]);
        translate([13,ydim/2-7.5,-0.1])cube([5,15,zdim+0.2]);
        }
    
}
baseboard();