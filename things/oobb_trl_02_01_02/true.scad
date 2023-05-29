$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [-9.5000000000, 2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [9.5000000000, 2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [-9.5000000000, -2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [9.5000000000, -2.0000000000, 0]) {
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
				hull() {
					translate(v = [-7.7500000000, 0.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 2, r = 6);
								}
							}
						}
					}
					translate(v = [7.7500000000, 0.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 2, r = 6);
								}
							}
						}
					}
					translate(v = [-7.7500000000, -0.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 2, r = 6);
								}
							}
						}
					}
					translate(v = [7.7500000000, -0.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 2, r = 6);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [14.5000000000, 0, 0.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 1, r = 5);
			}
		}
	}
	union();
}