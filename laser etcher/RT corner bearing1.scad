use <RT bearing corner.scad>


base();
bearingmount();

module bearingmount(){

bearingy = 15;
bearingx = 30;

difference(){
translate(v=[bearingx,bearingy,-15]) cube(size = [12,20,65], center = true);



translate(v=[bearingx-5,bearingy,-37]) rotate(a=[0,-90,0]) rotate(a=[0,0,0]) cylinder(h=6, r=5.1, center = true);

translate(v=[bearingx,bearingy,-37]) rotate(a=[0,-90,0]) rotate(a=[0,0,0]) cylinder(h=15, r=3, center = true);

}
}


