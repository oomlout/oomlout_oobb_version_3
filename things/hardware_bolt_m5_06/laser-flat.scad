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
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										linear_extrude(height = 3.5000000000) {
											polygon(points = [[4.6160000000, 0.0000000000], [2.3080000000, 3.9975732639], [-2.3080000000, 3.9975732639], [-4.6160000000, 0.0000000000], [-2.3080000000, -3.9975732639], [2.3080000000, -3.9975732639]]);
										}
									}
								}
							}
						}
						translate(v = [0, 0, -6]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 2.5000000000);
							}
						}
					}
					union();
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
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										linear_extrude(height = 3.5000000000) {
											polygon(points = [[4.6160000000, 0.0000000000], [2.3080000000, 3.9975732639], [-2.3080000000, 3.9975732639], [-4.6160000000, 0.0000000000], [-2.3080000000, -3.9975732639], [2.3080000000, -3.9975732639]]);
										}
									}
								}
							}
						}
						translate(v = [0, 0, -6]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 2.5000000000);
							}
						}
					}
					union();
				}
			}
		}
	}
}