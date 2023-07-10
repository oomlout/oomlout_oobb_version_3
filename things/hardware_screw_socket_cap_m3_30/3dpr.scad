$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3.2000000000, r = 3.0000000000);
			}
		}
		translate(v = [0, 0, -30]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 30, r = 1.8000000000);
			}
		}
	}
	union();
}