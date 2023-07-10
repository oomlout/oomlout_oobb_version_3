$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [-9.5000000000, 9.5000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [9.5000000000, 9.5000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [-9.5000000000, -9.5000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [9.5000000000, -9.5000000000, 0]) {
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
					translate(v = [-7.4500000000, 7.4500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 2, r = 6);
								}
							}
						}
					}
					translate(v = [7.4500000000, 7.4500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 2, r = 6);
								}
							}
						}
					}
					translate(v = [-7.4500000000, -7.4500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 2, r = 6);
								}
							}
						}
					}
					translate(v = [7.4500000000, -7.4500000000, 0]) {
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
	union() {
		translate(v = [0, 0, 0.3000000000]) {
			rotate(a = [0, 180, 90]) {
				linear_extrude(height = 0.3000000000) {
					text(font = "Candara:Light", halign = "center", size = 6, text = "3+0.1", valign = "center");
				}
			}
		}
	}
}