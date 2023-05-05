$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.9000000000);
							}
						}
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.9000000000);
							}
						}
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.9000000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -10]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 110, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.9000000000);
							}
						}
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.9000000000);
							}
						}
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.9000000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -10]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
}