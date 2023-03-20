$fn = 50;


difference() {
	union() {
		translate(v = [0, 13.5000000000, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [-17.0000000000, 2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 12, r = 5);
								}
							}
						}
					}
					translate(v = [17.0000000000, 2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 12, r = 5);
								}
							}
						}
					}
					translate(v = [-17.0000000000, -2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 12, r = 5);
								}
							}
						}
					}
					translate(v = [17.0000000000, -2.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 12, r = 5);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [-22.0000000000, 0, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [44, 13.5000000000, 12]);
			}
		}
	}
	union() {
		translate(v = [-17.0000000000, 11.5000000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [4, 2, 100]);
			}
		}
		translate(v = [-17.0000000000, 16.5000000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [4, 2, 100]);
			}
		}
		translate(v = [-15.0000000000, 8, 0]) {
			rotate(a = [90, 0, 0]) {
				cylinder(h = 8, r = 3.2500000000);
			}
		}
		translate(v = [-19.8960138648, 9, -50]) {
			rotate(a = [90, 0, 0]) {
				cube(size = [10.2253032929, 100, 6.3142500000]);
			}
		}
		translate(v = [-2.0000000000, 11.5000000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [4, 2, 100]);
			}
		}
		translate(v = [-2.0000000000, 16.5000000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [4, 2, 100]);
			}
		}
		translate(v = [0.0000000000, 8, 0]) {
			rotate(a = [90, 0, 0]) {
				cylinder(h = 8, r = 3.2500000000);
			}
		}
		translate(v = [-4.8960138648, 9, -50]) {
			rotate(a = [90, 0, 0]) {
				cube(size = [10.2253032929, 100, 6.3142500000]);
			}
		}
		translate(v = [13.0000000000, 11.5000000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [4, 2, 100]);
			}
		}
		translate(v = [13.0000000000, 16.5000000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [4, 2, 100]);
			}
		}
		translate(v = [15.0000000000, 8, 0]) {
			rotate(a = [90, 0, 0]) {
				cylinder(h = 8, r = 3.2500000000);
			}
		}
		translate(v = [10.1039861352, 9, -50]) {
			rotate(a = [90, 0, 0]) {
				cube(size = [10.2253032929, 100, 6.3142500000]);
			}
		}
	}
}