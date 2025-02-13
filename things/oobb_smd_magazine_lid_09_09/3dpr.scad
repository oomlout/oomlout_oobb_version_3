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
									cylinder(h = 0.6000000000, r = 5);
								}
							}
						}
					}
					translate(v = [62.0000000000, 62.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 0.6000000000, r = 5);
								}
							}
						}
					}
					translate(v = [-62.0000000000, -62.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 0.6000000000, r = 5);
								}
							}
						}
					}
					translate(v = [62.0000000000, -62.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 0.6000000000, r = 5);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [-67.0000000000, 61.0000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [6, 6, 0.6000000000]);
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
		translate(v = [-67.5000000000, 60.0000000000, -125]) {
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
		translate(v = [0, 0, 0.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 0.6000000000, r = 6.5000000000);
			}
		}
	}
}