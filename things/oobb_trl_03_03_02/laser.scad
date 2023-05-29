$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [-17.0000000000, 17.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [17.0000000000, 17.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [-17.0000000000, -17.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 1, r = 5);
								}
							}
						}
					}
					translate(v = [17.0000000000, -17.0000000000, 0]) {
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
					translate(v = [-15.2500000000, 15.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 2, r = 6);
								}
							}
						}
					}
					translate(v = [15.2500000000, 15.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 2, r = 6);
								}
							}
						}
					}
					translate(v = [-15.2500000000, -15.2500000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 2, r = 6);
								}
							}
						}
					}
					translate(v = [15.2500000000, -15.2500000000, 0]) {
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
		translate(v = [22.0000000000, 0, 0.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 1, r = 5);
			}
		}
	}
	union();
}