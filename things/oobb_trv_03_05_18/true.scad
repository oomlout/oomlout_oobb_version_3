$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					translate(v = [-17.0000000000, 32.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 18, r = 5);
								}
							}
						}
					}
					translate(v = [17.0000000000, 32.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 18, r = 5);
								}
							}
						}
					}
					translate(v = [-17.0000000000, -32.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 18, r = 5);
								}
							}
						}
					}
					translate(v = [17.0000000000, -32.0000000000, 0]) {
						rotate(a = [0, 0, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									cylinder(h = 18, r = 5);
								}
							}
						}
					}
				}
			}
		}
		translate(v = [-21.0000000000, 0, 15]) {
			rotate(a = [0, 90, 0]) {
				hull() {
					translate(v = [-10.0000000000, 32.5000000000, 0]) {
						rotate(a = [0, 90, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									cylinder(h = 3, r = 5);
								}
							}
						}
					}
					translate(v = [10.0000000000, 32.5000000000, 0]) {
						rotate(a = [0, 90, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									cylinder(h = 3, r = 5);
								}
							}
						}
					}
					translate(v = [-10.0000000000, -32.5000000000, 0]) {
						rotate(a = [0, 90, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 90, 0]) {
									cylinder(h = 3, r = 5);
								}
							}
						}
					}
					translate(v = [10.0000000000, -32.5000000000, 0]) {
						rotate(a = [0, 90, 0]) {
							translate(v = [0, 0, 0]) {
								rotate(a = [0, 90, 0]) {
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
		translate(v = [0, 0, 3]) {
			rotate(a = [0, 0, 0]) {
				hull() {
					union() {
						translate(v = [-17.0000000000, 32.0000000000, 4]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 30, r = 4);
									}
								}
							}
						}
						translate(v = [-17.0000000000, 32.0000000000, 4]) {
							rotate(a = [0, 0, 0]) {
								sphere(r = 4);
							}
						}
						translate(v = [-17.0000000000, 32.0000000000, 34]) {
							rotate(a = [0, 0, 0]) {
								sphere(r = 4);
							}
						}
					}
					union() {
						translate(v = [17.0000000000, 32.0000000000, 4]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 30, r = 4);
									}
								}
							}
						}
						translate(v = [17.0000000000, 32.0000000000, 4]) {
							rotate(a = [0, 0, 0]) {
								sphere(r = 4);
							}
						}
						translate(v = [17.0000000000, 32.0000000000, 34]) {
							rotate(a = [0, 0, 0]) {
								sphere(r = 4);
							}
						}
					}
					union() {
						translate(v = [-17.0000000000, -32.0000000000, 4]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 30, r = 4);
									}
								}
							}
						}
						translate(v = [-17.0000000000, -32.0000000000, 4]) {
							rotate(a = [0, 0, 0]) {
								sphere(r = 4);
							}
						}
						translate(v = [-17.0000000000, -32.0000000000, 34]) {
							rotate(a = [0, 0, 0]) {
								sphere(r = 4);
							}
						}
					}
					union() {
						translate(v = [17.0000000000, -32.0000000000, 4]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 30, r = 4);
									}
								}
							}
						}
						translate(v = [17.0000000000, -32.0000000000, 4]) {
							rotate(a = [0, 0, 0]) {
								sphere(r = 4);
							}
						}
						translate(v = [17.0000000000, -32.0000000000, 34]) {
							rotate(a = [0, 0, 0]) {
								sphere(r = 4);
							}
						}
					}
				}
			}
		}
		translate(v = [-15.0000000000, -30.0000000000, 1.3000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [-15.0000000000, -30.0000000000, -3]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 1.5000000000);
			}
		}
		translate(v = [15.0000000000, -30.0000000000, 1.3000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [15.0000000000, -30.0000000000, -3]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 1.5000000000);
			}
		}
		translate(v = [-15.0000000000, 30.0000000000, 1.3000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [-15.0000000000, 30.0000000000, -3]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 1.5000000000);
			}
		}
		translate(v = [15.0000000000, 30.0000000000, 1.3000000000]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [15.0000000000, 30.0000000000, -3]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 6, r = 1.5000000000);
			}
		}
		#translate(v = [-37.5000000000, -30.0000000000, 22.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 300, r = 3.0000000000);
			}
		}
		#translate(v = [-37.5000000000, -15.0000000000, 22.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 300, r = 3.0000000000);
			}
		}
		#translate(v = [-37.5000000000, 0.0000000000, 22.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 300, r = 3.0000000000);
			}
		}
		#translate(v = [-37.5000000000, 15.0000000000, 22.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 300, r = 3.0000000000);
			}
		}
		#translate(v = [-37.5000000000, 30.0000000000, 22.5000000000]) {
			rotate(a = [0, 90, 0]) {
				cylinder(h = 300, r = 3.0000000000);
			}
		}
	}
}