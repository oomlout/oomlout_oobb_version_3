$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [-7.5000000000, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-24.5000000000, 17.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [24.5000000000, 17.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-24.5000000000, -17.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [24.5000000000, -17.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
								}
							}
						}
					}
					union() {
						translate(v = [-30.0000000000, -15.0000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [-15.0000000000, -15.0000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [15.0000000000, -15.0000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [-30.0000000000, 15.0000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [-15.0000000000, 15.0000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [15.0000000000, 15.0000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [0.0000000000, -15.0000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [0.0000000000, 15.0000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [15.0000000000, 0.0000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 4.0000000000);
							}
						}
						translate(v = [-9, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [-20, 8.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.2500000000, r2 = 2.2500000000);
							}
						}
						translate(v = [-20, 8.5000000000, -22]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 25, r = 1.2500000000);
							}
						}
						translate(v = [-20, -8.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.2500000000, r2 = 2.2500000000);
							}
						}
						translate(v = [-20, -8.5000000000, -22]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 25, r = 1.2500000000);
							}
						}
						translate(v = [12, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.2500000000, r2 = 2.2500000000);
							}
						}
						translate(v = [12, 0, -22]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 25, r = 1.2500000000);
							}
						}
						translate(v = [-54.0000000000, -7.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cube(size = [28, 14, 100]);
							}
						}
					}
				}
			}
		}
	}
}