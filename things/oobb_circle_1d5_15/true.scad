$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -7.5000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 15, r = 10.2500000000);
			}
		}
	}
	union() {
		translate(v = [0, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [0, 7.5000000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 1.5000000000);
			}
		}
		translate(v = [0, -7.5000000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 1.5000000000);
			}
		}
		translate(v = [7.7500000000, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [0.2500000000, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 250, r = 1.5000000000);
								}
							}
						}
					}
					translate(v = [-0.2500000000, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 250, r = 1.5000000000);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [-7.7500000000, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [0.2500000000, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 250, r = 1.5000000000);
								}
							}
						}
					}
					translate(v = [-0.2500000000, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 250, r = 1.5000000000);
								}
							}
						}
					}
				}
			}
		}
	}
}