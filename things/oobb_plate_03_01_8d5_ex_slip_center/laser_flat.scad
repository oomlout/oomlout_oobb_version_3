$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -2.7500000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-17.0000000000, 2.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 8.5000000000, r = 5);
												}
											}
										}
									}
									translate(v = [17.0000000000, 2.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 8.5000000000, r = 5);
												}
											}
										}
									}
									translate(v = [-17.0000000000, -2.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 8.5000000000, r = 5);
												}
											}
										}
									}
									translate(v = [17.0000000000, -2.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 8.5000000000, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 0.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 8.5000000000, r = 10.0000000000);
							}
						}
					}
					union() {
						translate(v = [-15.0000000000, 0.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [0.0000000000, 0.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [15.0000000000, 0.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 4.7000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 24, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 0.2500000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-17.0000000000, 2.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 8.5000000000, r = 5);
												}
											}
										}
									}
									translate(v = [17.0000000000, 2.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 8.5000000000, r = 5);
												}
											}
										}
									}
									translate(v = [-17.0000000000, -2.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 8.5000000000, r = 5);
												}
											}
										}
									}
									translate(v = [17.0000000000, -2.0000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 8.5000000000, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 0.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 8.5000000000, r = 10.0000000000);
							}
						}
					}
					union() {
						translate(v = [-15.0000000000, 0.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [0.0000000000, 0.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [15.0000000000, 0.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, -50]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 100, r = 3.0000000000);
									}
								}
							}
						}
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 4.7000000000);
							}
						}
					}
				}
			}
		}
	}
}