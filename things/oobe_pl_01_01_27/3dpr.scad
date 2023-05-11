$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [-1.0000000000, 1.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 27, r = 2.5000000000);
								}
							}
						}
					}
					translate(v = [1.0000000000, 1.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 27, r = 2.5000000000);
								}
							}
						}
					}
					translate(v = [-1.0000000000, -1.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 27, r = 2.5000000000);
								}
							}
						}
					}
					translate(v = [1.0000000000, -1.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 27, r = 2.5000000000);
								}
							}
						}
					}
				}
			}
		}
	}
	union() {
		translate(v = [0.0000000000, 0.0000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				translate(v = [0, 0, -50]) {
					rotate(a = [0, 0, 0]) {
						cylinder(h = 100, r = 1.8000000000);
					}
				}
			}
		}
	}
}