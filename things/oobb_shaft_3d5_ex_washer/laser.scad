$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -1.5000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 1.0000000000);
			}
		}
		translate(v = [0, 0, -1.5000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6.5000000000, r = 3.0000000000);
			}
		}
	}
	union() {
		translate(v = [0, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 1.5000000000);
			}
		}
	}
}