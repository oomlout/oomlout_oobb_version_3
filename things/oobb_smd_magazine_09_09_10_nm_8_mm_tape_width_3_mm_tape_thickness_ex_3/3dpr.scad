$fn = 50;


union() {
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
			translate(v = [0, 0, 0.6000000000]) {
				rotate(a = [0, 0, 0]) {
					cylinder(h = 12.4000000000, r = 64.0000000000);
				}
			}
			translate(v = [0, 0, -5.0000000000]) {
				rotate(a = [0, 0, 0]) {
					cylinder(h = 10, r = 6.5000000000);
				}
			}
			translate(v = [0.0000000000, 61.0000000000, 0.6000000000]) {
				rotate(a = [0, 0, 0]) {
					cube(size = [67.0000000000, 3, 12.4000000000]);
				}
			}
			translate(v = [57.0000000000, 61.0000000000, 0.6000000000]) {
				rotate(a = [0, 0, 0]) {
					cube(size = [10, 6, 12.4000000000]);
				}
			}
			#translate(v = [46.0000000000, 61.0000000000, 8.5000000000]) {
				rotate(a = [0, 0, 0]) {
					cube(size = [21, 6, 1.5000000000]);
				}
			}
			translate(v = [43.2500000000, 67.7500000000, 0.6000000000]) {
				rotate(a = [0, 0, -45]) {
					cube(size = [7.5000000000, 1.5000000000, 12.4000000000]);
				}
			}
			translate(v = [12.0610000000, 60.5000000000, 0.6000000000]) {
				rotate(a = [0, 0, 0]) {
					cube(size = [7.5000000000, 2, 9.4000000000]);
				}
			}
		}
	}
	union() {
		translate(v = [21.3110000000, 61.5000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [2.5000000000, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 10, r = 1.0000000000);
								}
							}
						}
					}
					translate(v = [-2.5000000000, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 10, r = 1.0000000000);
								}
							}
						}
					}
				}
			}
		}
	}
}