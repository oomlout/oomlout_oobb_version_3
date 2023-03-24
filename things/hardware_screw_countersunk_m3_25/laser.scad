$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -1.7000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [0, 0, -25]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 25, r = 1.5000000000);
			}
		}
	}
	union();
}