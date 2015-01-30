

module base()
{

difference(){
//main box
translate(v=[0,0,0]) cube(size = [50,50,35], center = true);


//8mm rod
translate(v=[16,16,-10]) rotate(a=[90,90,0]) rotate(a=[0,0,0]) cylinder(h=20, r=4.4, center = true);

//3/8 all thread hole
translate(v=[-12,-16,-8]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h=80, r=5.4, center = true);

//3/8 all thread hole
translate(v=[16,0,8]) rotate(a=[0,-90,0]) rotate(a=[90,0,0]) cylinder(h=80, r=5.4, center = true);


// vertical 3/8 all thread hole
translate(v=[3,-3,0]) rotate(a=[0,0,0]) rotate(a=[0,0,0]) cylinder(h=80, r=5.4, center = true);
//cutout of all thread holes
//translate(v=[16,-16,0]) cube(size = [32,32,41], center = true);

translate(v=[-18,18,0]) rotate(a=[0,0,45]) cube(size = [45,25,41], center = true);
}

}


module finished()
{

base();	

}

finished();

