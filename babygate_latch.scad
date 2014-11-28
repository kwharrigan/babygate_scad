module babygate_latch()

{
	// body
	color ("grey")
	cube([190, 90, 90], center=true);

	// nub for spring
	module nub()
	{
	rotate(90, [1, 0, 0])
	rotate(90, [0, 1, 0])
	translate([0, 0, -120])
	color("red") cylinder(r=20, h=30);
	}
	//nub();

	// latch
	translate([135, 0, 5])  
	color("grey") 
	difference() 
	{
		cube([80, 50, 80], center=true);
		// subtract corner
		rotate(45, [0, 1, 0])
		translate([60, 0, 0]) 
		cube([60, 60, 60], center=true);
	}	

	// catch
	translate([65, 0, 50])
	cube([10, 40, 10], center=true);

}
scale([0.1, 0.1, 0.1]) // to mm
babygate_latch();


