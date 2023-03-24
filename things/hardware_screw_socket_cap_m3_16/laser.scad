$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.9000000000);
			}
		}
		translate(v = [0, 0, -16]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 16, r = 1.5000000000);
			}
		}
	}
	union();
}