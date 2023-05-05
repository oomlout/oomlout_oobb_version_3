$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -6.0000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -1.5000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r = 7.0000000000);
							}
						}
						translate(v = [0, 0, -1.5000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 18, r = 3.0000000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 110, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -3.0000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -1.5000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r = 7.0000000000);
							}
						}
						translate(v = [0, 0, -1.5000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 18, r = 3.0000000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 220, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 0.0000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -1.5000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r = 7.0000000000);
							}
						}
						translate(v = [0, 0, -1.5000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 18, r = 3.0000000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 330, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 3.0000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -1.5000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r = 7.0000000000);
							}
						}
						translate(v = [0, 0, -1.5000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 18, r = 3.0000000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 440, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 6.0000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -1.5000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r = 7.0000000000);
							}
						}
						translate(v = [0, 0, -1.5000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 18, r = 3.0000000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -125.0000000000]) {
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