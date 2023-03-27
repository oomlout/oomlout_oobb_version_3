$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -1.5000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 7.0000000000);
			}
		}
		translate(v = [0, 0, -1.7500000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3.5000000000, r = 2.8500000000);
			}
		}
	}
	union() {
		translate(v = [0, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 1.8000000000);
			}
		}
	}
}