goldenratio = 1.618003399;
joinfactor=0.25;

gDefaultThickness = 4;
gDefaultWidth = 48;	// 42 is nema 17 size, but I want taller for bottom bolt clearance
gDefaultDepth = 43;	// 42 is nema 17 size
gDefaultHeight = 38;

gDefaultMountHoleRadius = 3/2;
gDefaultMountSlotLength = 10;

gNema17MountDiagonal = 43;

nema17sidemount(gDefaultThickness);

module roundslot(length, width, thickness)
{
	cube(size=[width, length-width,thickness], center=true);
	
	translate([0, length/2-width/2, 0])
	cylinder(r=width/2, h=thickness, center=true);

	translate([0, -length/2+width/2, 0])
	cylinder(r=width/2, h=thickness, center=true);
}

module nema17shaftplate(thickness)
{
	mountHoleRadius = 3/2;
	mountRadius = gNema17MountDiagonal/2;

	shaftcollarradius = 11;

	difference()
	{
		cube(size=[gDefaultWidth, gDefaultDepth, thickness], center=true);
		// Subtract a circle for the collar around the shaft
		cylinder(r=shaftcollarradius, h=thickness+2*joinfactor, center=true);

		// Create the mounting holes
		for(hole=[0:3])
		{
			rotate([0,0,(hole*90)+45])
			translate([mountRadius, 0, 0])
			cylinder(r=mountHoleRadius, h=thickness+2*joinfactor, center=true);
		}
	}
}

module nema17sidemount(thickness)
{
	union()
	{
		// First the slide plate
		translate([gDefaultHeight/2, gDefaultDepth/2, gDefaultThickness/2])
		slideplate(gDefaultHeight, gDefaultDepth, gDefaultThickness);
	
		// Then the shaft plate
		rotate([0, -90, 0])
		translate([gDefaultWidth/2+thickness-joinfactor, gDefaultDepth/2, -thickness/2])	
		nema17shaftplate(thickness);
	}

}