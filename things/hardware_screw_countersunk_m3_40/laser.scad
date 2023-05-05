$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -3]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
			}
		}
		translate(v = [0, 0, -40]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 40, r = 1.5000000000);
			}
		}
	}
	union();
}