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
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-32.0000000000, 9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [32.0000000000, 9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-32.0000000000, -9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [32.0000000000, -9.5000000000, 0]) {
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
						translate(v = [-30.0000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [-30.0000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [-15.0000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [-15.0000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [0.0000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [0.0000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [15.0000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [15.0000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [30.0000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [30.0000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						#translate(v = [10, 15, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						#translate(v = [-10, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						#translate(v = [25, 15, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						#translate(v = [-25, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						#translate(v = [40, 15, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						#translate(v = [-40, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
					}
				}
			}
		}
	}
}