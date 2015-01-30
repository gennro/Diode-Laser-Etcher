use <corner.scad>


base();
steppermount();

module steppermount(){

steppermounty = -28;
steppermountx = -15;

difference(){
translate(v=[steppermountx,steppermounty,-20]) cube(size = [40,12,75], center = true);

//translate(v=[-30,-28,9]) cube(size = [10.1,12.1,20], center = true);

//translate(v=[-34.8,-28,-8]) rotate(a=[0,30,0]) cube(size = [10.1,12.1,22], center = true);



//motor hole
translate(v=[steppermountx+15.5,steppermounty,-37+15.5]) rotate(a=[0,-90,0]) rotate(a=[90,0,0]) cylinder(h=12.1, r=1.8, center = true);
//motor hole
translate(v=[steppermountx-15.5,steppermounty,-37-15.5]) rotate(a=[0,-90,0]) rotate(a=[90,0,0]) cylinder(h=12.1, r=1.8, center = true);
//motor hole
translate(v=[steppermountx+15.5,steppermounty,-37-15.5]) rotate(a=[0,-90,0]) rotate(a=[90,0,0]) cylinder(h=12.1, r=1.8, center = true);
//motor hole
translate(v=[steppermountx-15.5,steppermounty,-37+15.5]) rotate(a=[0,-90,0]) rotate(a=[90,0,0]) cylinder(h=12.1, r=1.8, center = true);
//motor center hole
translate(v=[steppermountx,steppermounty,-37]) rotate(a=[0,-90,0]) rotate(a=[90,0,0]) cylinder(h=12.1, r=12, center = true);
}
}


