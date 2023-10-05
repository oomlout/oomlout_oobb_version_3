$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 0.6250000000, r = 2.5000000000);
			}
		}
		translate(v = [0, 0, -6]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 0.7500000000);
			}
		}
	}
	union();
}