$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [-62.0000000000, 62.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 10, r = 5);
								}
							}
						}
					}
					translate(v = [62.0000000000, 62.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 10, r = 5);
								}
							}
						}
					}
					translate(v = [-62.0000000000, -62.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 10, r = 5);
								}
							}
						}
					}
					translate(v = [62.0000000000, -62.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 10, r = 5);
								}
							}
						}
					}
				}
			}
		}
	}
	union() {
		translate(v = [-67.5000000000, -60.0000000000, -125]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [7.5000000000, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 250, r = 3.2500000000);
								}
							}
						}
					}
					translate(v = [-7.5000000000, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 250, r = 3.2500000000);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [60.0000000000, -60.0000000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.2500000000);
			}
		}
		translate(v = [-67.0000000000, 60.0000000000, 5.0000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 9, r = 1.8000000000);
			}
		}
		translate(v = [-61.0000000000, 57.0000000000, 1.5000000000]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [3, 6, 8.5000000000]);
			}
		}
		translate(v = [0, 0, 1.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 12, r = 65.5000000000);
			}
		}
		translate(v = [0, 0, -5.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 10, r = 10.0000000000);
			}
		}
		translate(v = [0.0000000000, 62.0000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [67.0000000000, 2, 12]);
			}
		}
		translate(v = [50.2500000000, 62.0000000000, 1]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [16.7500000000, 5, 12]);
			}
		}
		translate(v = [13.4000000000, 62.0000000000, 8.5000000000]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [53.6000000000, 5, 1.5000000000]);
			}
		}
		translate(v = [18.5833333333, 67.7500000000, 1]) {
			rotate(a = [0, 0, -45]) {
				cube(size = [7.5000000000, 1.5000000000, 12]);
			}
		}
	}
}