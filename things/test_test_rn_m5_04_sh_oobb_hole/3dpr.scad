$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [-9.2500000000, 9.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 4, r = 5);
								}
							}
						}
					}
					translate(v = [9.2500000000, 9.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 4, r = 5);
								}
							}
						}
					}
					translate(v = [-9.2500000000, -9.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 4, r = 5);
								}
							}
						}
					}
					translate(v = [9.2500000000, -9.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 4, r = 5);
								}
							}
						}
					}
				}
			}
		}
	}
	union() {
		translate(v = [-9.5000000000, -9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.3500000000);
			}
		}
		translate(v = [-9.5000000000, -9.5000000000, -250.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 0.9000000000);
			}
		}
		translate(v = [-9.5000000000, 0.0000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.4500000000);
			}
		}
		translate(v = [-9.5000000000, 0.0000000000, -250.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 0.9000000000);
			}
		}
		translate(v = [-9.5000000000, 9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.5500000000);
			}
		}
		translate(v = [0.0000000000, -9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.6500000000);
			}
		}
		translate(v = [0.0000000000, 0.0000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.7500000000);
			}
		}
		translate(v = [0.0000000000, 9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.8500000000);
			}
		}
		translate(v = [9.5000000000, -9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.9500000000);
			}
		}
		translate(v = [9.5000000000, 0.0000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 3.0500000000);
			}
		}
		translate(v = [9.5000000000, 9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 3.1500000000);
			}
		}
	}
}