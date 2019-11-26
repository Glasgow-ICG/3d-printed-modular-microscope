//dimensions of power pack
xpow=170;
ypow=80;
zpow=20;

//dimensions of display
xdisp=192.96;
ydisp=110.76;
zdisp=8.46;
//positions of display mount (1=left/top;2=right/bottom)
x1doff=12.54+20;
x2doff=x1doff+126.2;
y1doff=ydisp-21.58;
y2doff=y1doff-65.65;
//diameter of display mount holes
ddisp=3;
//hole quality
quality=1000;

//angle of display
angle=40;

module displaybracket(){
    translate([xdisp/2-195/2,0,0]){
    difference(){
            cube([195,85,91]);
            translate([-0.1,8,5])cube([xpow*2,ypow-11,80]);
            translate([21/2-0.1,-15,5]){
            translate([0,0,0])cube([xpow+4,115,80]);
        }
        
        translate([195/2-xdisp/2,-12.5,40]){
            translate([x1doff,y1doff,-5])cylinder(d=ddisp+0.2,h=90,$fn=quality,center=true);
            translate([x2doff,y1doff,-5])cylinder(d=ddisp+0.2,h=90,$fn=quality,center=true);
            translate([x1doff,y2doff,-5])cylinder(d=ddisp+0.2,h=90,$fn=quality,center=true);
            translate([x2doff,y2doff,-5])cylinder(d=ddisp+0.2,h=90,$fn=quality,center=true);
            
            translate([12.54+48.45,ydisp-6.63-20.8,-5])cylinder(d=10+0.2,h=90,$fn=quality,center=true);
            translate([12.54+48.45+58,ydisp-6.63-20.8,-5])cylinder(d=10+0.2,h=90,$fn=quality,center=true);
            translate([12.54+48.45,ydisp-6.63-20.8-49,-5])cylinder(d=10+0.2,h=90,$fn=quality,center=true);
            translate([12.54+48.45+58,ydisp-6.63-20.8-49,-5])cylinder(d=10+0.2,h=90,$fn=quality,center=true);
        }
    translate([-2,0,60])rotate(15,[1,0,0])cube([200,150,100]);
        
        translate([-3,-5,3/2*5+50])rotate(15,[1,0,0]){
        for(t=[1:10]){
        for(u=[1:8]){
            translate([t*20-10,u*20-10,0]){
            cylinder(d=5,h=5,center=true,$fn=quality);
            }
        }
    }
    }
    }
    
    difference(){
        translate([195/2-xdisp/2,-12.5,0]){
            translate([x1doff,y1doff,10])cylinder(d=7.5+0.2,h=10,$fn=quality,center=true);
            translate([x2doff,y1doff,10])cylinder(d=7.5+0.2,h=10,$fn=quality,center=true);
            translate([x1doff,y2doff,10])cylinder(d=7.5+0.2,h=10,$fn=quality,center=true);
            translate([x2doff,y2doff,10])cylinder(d=7.5+0.2,h=10,$fn=quality,center=true);
        }
            

        translate([195/2-xdisp/2,-12.5,40]){
            translate([x1doff,y1doff,-5])cylinder(d=ddisp+0.2,h=90,$fn=quality,center=true);
            translate([x2doff,y1doff,-5])cylinder(d=ddisp+0.2,h=90,$fn=quality,center=true);
            translate([x1doff,y2doff,-5])cylinder(d=ddisp+0.2,h=90,$fn=quality,center=true);
            translate([x2doff,y2doff,-5])cylinder(d=ddisp+0.2,h=90,$fn=quality,center=true);
        }
    }
    
}
}
displaybracket();