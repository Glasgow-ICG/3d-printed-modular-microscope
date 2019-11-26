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

module ledbracket(){
difference(){
//main block
        hull(){
            translate([0,0,15])cube([35,8,32]);
            translate([5,0,0])cube([25,8,0.1]);
        }
    
//rail cavity
        translate([35/2-ydim/2,20,0]){
    rotate(270,[0,0,1]){
    translate([0,ydim/3-0.15,-0.1]){
        cube([xdim,ydim/3+0.3,zdim/2+0.2]);
    }
    translate([0,0,1/2*zdim]){
        cube([xdim,ydim,zdim/2]);
    }
    }
}
    
//led board cavity
    translate([35/2-4.5,-2,bhgt-4.5])cube([9,20,9]);
translate([0,0,0]){
    translate([35/2,5/2-0.1,bhgt])rotate(90,[1,0,0])cylinder(d=25,h=5,center=true,$fn=quality);
}
    translate([35/2,7.5,bhgt]){
    translate([9.525,0,0])rotate(90,[1,0,0])cylinder(d=3.2,h=25,center=true,$fn=quality);
    translate([-9.525,0,0])rotate(90,[1,0,0])cylinder(d=3.2,h=25,center=true,$fn=quality);
        hull(){
        rotate(60,[0,1,0]){
    translate([-9.525,0,0])rotate(90,[1,0,0])cylinder(d=3,h=25,center=true,$fn=quality);
        }
        rotate(60,[0,-1,0]){
    translate([9.525,0,0])rotate(90,[1,0,0])cylinder(d=3,h=25,center=true,$fn=quality);
        }
        
        }
        hull(){
        rotate(60,[0,1,0]){
    translate([9.525,0,0])rotate(90,[1,0,0])cylinder(d=3,h=25,center=true,$fn=quality);
        }
            rotate(60,[0,-1,0]){
    translate([-9.525,0,0])rotate(90,[1,0,0])cylinder(d=3,h=25,center=true,$fn=quality);
        }
        }
    }
    
    translate([35/2-25/2,-0.1,bhgt-25/2])cube([25,3,25]);
//secure bolt holes     M3 ROUGHLY
    translate([20,3.75,2.5])rotate(90,[0,1,0])cylinder(d=3.15,h=50,center=true,$fn=quality);
    translate([3,1.5,0.5])cube([2,5,5]);
    translate([30,1.5,0.5])cube([2,5,5]);

}
}
ledbracket();