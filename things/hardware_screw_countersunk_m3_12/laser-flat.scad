$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -4.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -1.7000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
							}
						}
						translate(v = [0, 0, -12]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 12, r = 1.5000000000);
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
				translate(v = [-500, -500, -1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -1.7000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
							}
						}
						translate(v = [0, 0, -12]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
					}
					union();
				}
			}
		}
	}
	translate(v = [0, 220, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -1.7000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
							}
						}
						translate(v = [0, 0, -12]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
					}
					union();
				}
			}
		}
	}
	translate(v = [0, 330, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 4.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -1.7000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
							}
						}
						translate(v = [0, 0, -12]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
					}
					union();
				}
			}
		}
	}
}