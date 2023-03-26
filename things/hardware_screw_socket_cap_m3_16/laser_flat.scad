$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -6.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						translate(v = [0, 0, -16]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 16, r = 1.5000000000);
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
				translate(v = [-500, -500, -3.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						translate(v = [0, 0, -16]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 16, r = 1.5000000000);
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
				translate(v = [-500, -500, -0.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						translate(v = [0, 0, -16]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 16, r = 1.5000000000);
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
				translate(v = [-500, -500, 2.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						translate(v = [0, 0, -16]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 16, r = 1.5000000000);
							}
						}
					}
					union();
				}
			}
		}
	}
	translate(v = [0, 440, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 5.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						translate(v = [0, 0, -16]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 16, r = 1.5000000000);
							}
						}
					}
					union();
				}
			}
		}
	}
}