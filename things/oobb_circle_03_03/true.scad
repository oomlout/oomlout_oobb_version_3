$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -1.5000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 3, r = 21.5000000000);
			}
		}
	}
	union() {
		translate(v = [0, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [0, 15, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [0, -15, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [-15, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [15, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [10.6070000000, 10.6070000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [10.6070000000, -10.6070000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [-10.6070000000, 10.6070000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [-10.6070000000, -10.6070000000, -125.0000000000]) {
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