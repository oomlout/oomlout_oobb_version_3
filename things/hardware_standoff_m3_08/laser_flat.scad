$fn = 50;


union() {
	translate(v = [0, 0.0000000000, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -2.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										linear_extrude(height = 8) {
											polygon(points = [[3.3466000000, 0.0000000000], [1.6733000000, 2.8982406163], [-1.6733000000, 2.8982406163], [-3.3466000000, 0.0000000000], [-1.6733000000, -2.8982406163], [1.6733000000, -2.8982406163]]);
										}
									}
								}
							}
						}
					}
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 8, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 12.7500000000, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 0.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										linear_extrude(height = 8) {
											polygon(points = [[3.3466000000, 0.0000000000], [1.6733000000, 2.8982406163], [-1.6733000000, 2.8982406163], [-3.3466000000, 0.0000000000], [-1.6733000000, -2.8982406163], [1.6733000000, -2.8982406163]]);
										}
									}
								}
							}
						}
					}
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 8, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
}