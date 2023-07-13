$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [-92.0000000000, 2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [92.0000000000, 2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [-92.0000000000, -2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [92.0000000000, -2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = 1) {
					text(font = "DejaVu Sans Mono:style=Bold", halign = "center", size = 209.0000000000, text = "L", valign = "top");
				}
			}
		}
	}
	union() {
		translate(v = [-90.0000000000, 0.0000000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.2500000000);
			}
		}
		translate(v = [90.0000000000, 0.0000000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.2500000000);
			}
		}
		translate(v = [90.0000000000, 0.0000000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.2500000000);
			}
		}
		translate(v = [0, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.2500000000);
			}
		}
	}
}