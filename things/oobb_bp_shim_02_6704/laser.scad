$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -1.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 2, r = 12.5000000000);
			}
		}
	}
	union() {
		translate(v = [0, 0, -1.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 2, r = 10.0000000000);
			}
		}
	}
}