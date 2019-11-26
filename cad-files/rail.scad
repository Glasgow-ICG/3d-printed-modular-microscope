//circle quality
quality=1000;
//rail dimensions   REMEMBER 3D PRINTER MAX PRINT SIZE
xdim=40;
ydim=15;
zdim=10;
//distance between pins
gap=20;
//height of pin holes
zhgt=5;

module rail(){
difference(){
//main block
    translate([0,0,0]){
        cube([xdim,ydim,zdim-0.3]);
    }
//holes in base
    translate([0,-gap/8,zhgt/2-0.1]){
        for(t=[1:2]){
        for(u=[1:1]){
            translate([t*gap-10,u*gap-10,0]){
            cylinder(d=5+0.4,h=zhgt+0.1,center=true,$fn=quality);
            }
        }
        }
    }
}
//rail section
    translate([0,ydim/3+0.25,zdim-0.3]){
        cube([xdim,ydim/3-0.5,zdim/2+0.7]);
    }
    translate([0,0.3,3/2*zdim+0.25]){
        cube([xdim,ydim-0.6,zdim/2-0.5]);
    }
}
rail();