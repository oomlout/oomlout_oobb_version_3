$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [-17.5000000000, 17.5000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 12, r = 5);
								}
							}
						}
					}
					translate(v = [17.5000000000, 17.5000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 12, r = 5);
								}
							}
						}
					}
					translate(v = [-17.5000000000, -17.5000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 12, r = 5);
								}
							}
						}
					}
					translate(v = [17.5000000000, -17.5000000000, 0]) {
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
	}
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				translate(v = [0, 0, -2.0000000000]) {
					union() {
						difference() {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 4, r = 13.5000000000);
								}
							}
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 4, r = 10.0000000000);
								}
							}
						}
						difference() {
							translate(v = [0, 0, -50]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 100, r = 12.2500000000);
								}
							}
							translate(v = [0, 0, -50]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 100, r = 11.2500000000);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [-15.0000000000, -15.0000000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [-15.0000000000, 15.0000000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [15.0000000000, -15.0000000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [15.0000000000, 15.0000000000, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 3.0000000000);
			}
		}
		translate(v = [-2.7500000000, -1.9250000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cube(size = [5.5000000000, 3.8500000000, 100]);
			}
		}
		translate(v = [18.0000000000, 0.0000000000, 4.3000000000]) {
			rotate(a = [0, 0, 15.0000000000]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [18.0000000000, 0.0000000000, -6.0000000000]) {
			rotate(a = [0, 0, 15.0000000000]) {
				cylinder(h = 12, r = 1.5000000000);
			}
		}
		translate(v = [18.0000000000, 0.0000000000, -6.0000000000]) {
			rotate(a = [0, 0, 15.0000000000]) {
				translate(v = [0, 0, 0]) {
					rotate(a = [0, 0, 15.0000000000]) {
						linear_extrude(height = 2.5000000000) {
							polygon(points = [[3.1735000000, 0.0000000000], [1.5867500000, 2.7483316189], [-1.5867500000, 2.7483316189], [-3.1735000000, 0.0000000000], [-1.5867500000, -2.7483316189], [1.5867500000, -2.7483316189]]);
						}
					}
				}
			}
		}
		translate(v = [0.0000000000, -18.0000000000, 4.3000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [0.0000000000, -18.0000000000, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 12, r = 1.5000000000);
			}
		}
		translate(v = [0.0000000000, -18.0000000000, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				translate(v = [0, 0, 0]) {
					rotate(a = [0, 0, 0]) {
						linear_extrude(height = 2.5000000000) {
							polygon(points = [[3.1735000000, 0.0000000000], [1.5867500000, 2.7483316189], [-1.5867500000, 2.7483316189], [-3.1735000000, 0.0000000000], [-1.5867500000, -2.7483316189], [1.5867500000, -2.7483316189]]);
						}
					}
				}
			}
		}
		translate(v = [-18.0000000000, 0.0000000000, -4.3000000000]) {
			rotate(a = [0, 180, 15.0000000000]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [-18.0000000000, 0.0000000000, 6.0000000000]) {
			rotate(a = [0, 180, 15.0000000000]) {
				cylinder(h = 12, r = 1.5000000000);
			}
		}
		translate(v = [-18.0000000000, 0.0000000000, 3.0000000000]) {
			rotate(a = [0, 180, 15.0000000000]) {
				translate(v = [0, 0, 0]) {
					rotate(a = [0, 180, 15.0000000000]) {
						linear_extrude(height = 2.5000000000) {
							polygon(points = [[3.1735000000, 0.0000000000], [1.5867500000, 2.7483316189], [-1.5867500000, 2.7483316189], [-3.1735000000, 0.0000000000], [-1.5867500000, -2.7483316189], [1.5867500000, -2.7483316189]]);
						}
					}
				}
			}
		}
		translate(v = [0.0000000000, 18.0000000000, 4.3000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [0.0000000000, 18.0000000000, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 12, r = 1.5000000000);
			}
		}
		translate(v = [0.0000000000, 18.0000000000, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				translate(v = [0, 0, 0]) {
					rotate(a = [0, 0, 0]) {
						linear_extrude(height = 2.5000000000) {
							polygon(points = [[3.1735000000, 0.0000000000], [1.5867500000, 2.7483316189], [-1.5867500000, 2.7483316189], [-3.1735000000, 0.0000000000], [-1.5867500000, -2.7483316189], [1.5867500000, -2.7483316189]]);
						}
					}
				}
			}
		}
		translate(v = [0, 7.5000000000, 4.3000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [0, 7.5000000000, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 12, r = 1.5000000000);
			}
		}
		translate(v = [0, 7.5000000000, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				translate(v = [0, 0, 0]) {
					rotate(a = [0, 0, 0]) {
						linear_extrude(height = 2.5000000000) {
							polygon(points = [[3.1735000000, 0.0000000000], [1.5867500000, 2.7483316189], [-1.5867500000, 2.7483316189], [-3.1735000000, 0.0000000000], [-1.5867500000, -2.7483316189], [1.5867500000, -2.7483316189]]);
						}
					}
				}
			}
		}
		translate(v = [0, -7.5000000000, -4.3000000000]) {
			rotate(a = [0, 180, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [0, -7.5000000000, 6.0000000000]) {
			rotate(a = [0, 180, 0]) {
				cylinder(h = 12, r = 1.5000000000);
			}
		}
		translate(v = [0, -7.5000000000, 3.0000000000]) {
			rotate(a = [0, 180, 0]) {
				translate(v = [0, 0, 0]) {
					rotate(a = [0, 180, 0]) {
						linear_extrude(height = 2.5000000000) {
							polygon(points = [[3.1735000000, 0.0000000000], [1.5867500000, 2.7483316189], [-1.5867500000, 2.7483316189], [-3.1735000000, 0.0000000000], [-1.5867500000, -2.7483316189], [1.5867500000, -2.7483316189]]);
						}
					}
				}
			}
		}
		translate(v = [7.5000000000, 0, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				translate(v = [0, 0, 0]) {
					rotate(a = [0, 0, 0]) {
						linear_extrude(height = 2.5000000000) {
							polygon(points = [[2.7735000000, 0.0000000000], [1.3867500000, 2.4019214574], [-1.3867500000, 2.4019214574], [-2.7735000000, 0.0000000000], [-1.3867500000, -2.4019214574], [1.3867500000, -2.4019214574]]);
						}
					}
				}
			}
		}
		translate(v = [-7.5000000000, 0, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				translate(v = [0, 0, 0]) {
					rotate(a = [0, 0, 0]) {
						linear_extrude(height = 2.5000000000) {
							polygon(points = [[2.7735000000, 0.0000000000], [1.3867500000, 2.4019214574], [-1.3867500000, 2.4019214574], [-2.7735000000, 0.0000000000], [-1.3867500000, -2.4019214574], [1.3867500000, -2.4019214574]]);
						}
					}
				}
			}
		}
		translate(v = [7.5000000000, 0, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 2.1000000000);
			}
		}
		translate(v = [7.5000000000, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 1.5000000000);
			}
		}
		translate(v = [7.5000000000, 0, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 2.1000000000);
			}
		}
		translate(v = [7.5000000000, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 1.5000000000);
			}
		}
		translate(v = [7.5000000000, 0, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 2.1000000000);
			}
		}
		translate(v = [7.5000000000, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 1.5000000000);
			}
		}
		translate(v = [-7.5000000000, 0, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 2.1000000000);
			}
		}
		translate(v = [-7.5000000000, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 1.5000000000);
			}
		}
		translate(v = [-7.5000000000, 0, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 2.1000000000);
			}
		}
		translate(v = [-7.5000000000, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 1.5000000000);
			}
		}
		translate(v = [-7.5000000000, 0, -6.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 2.1000000000);
			}
		}
		translate(v = [-7.5000000000, 0, -125.0000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 250, r = 1.5000000000);
			}
		}
	}
}