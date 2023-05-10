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
				cylinder(h = 3, r = 2.1000000000);
			}
		}
		translate(v = [-9.5000000000, -9.5000000000, -250.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 0.8000000000);
			}
		}
		translate(v = [-9.5000000000, 0.0000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.2000000000);
			}
		}
		translate(v = [-9.5000000000, 0.0000000000, -250.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 0.8000000000);
			}
		}
		translate(v = [-9.5000000000, 9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.3000000000);
			}
		}
		translate(v = [0.0000000000, -9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.4000000000);
			}
		}
		translate(v = [0.0000000000, 0.0000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.5000000000);
			}
		}
		translate(v = [0.0000000000, 9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.6000000000);
			}
		}
		translate(v = [9.5000000000, -9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.7000000000);
			}
		}
		translate(v = [9.5000000000, 0.0000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.8000000000);
			}
		}
		translate(v = [9.5000000000, 9.5000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 2.9000000000);
			}
		}
	}
}