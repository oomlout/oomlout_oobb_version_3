$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -4.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-9.5000000000, 9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [9.5000000000, 9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [-9.5000000000, -9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [9.5000000000, -9.5000000000, 0]) {
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
						translate(v = [-13.5000000000, 0, 15]) {
							rotate(a = [0, 90, 0]) {
								hull() {
									translate(v = [-10.0000000000, 10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [10.0000000000, 10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-10.0000000000, -10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [10.0000000000, -10.0000000000, 0]) {
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
										translate(v = [-9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [-9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [-9.5000000000, 9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [9.5000000000, 9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [-9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [-9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [-9.5000000000, -9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [9.5000000000, -9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
								}
							}
						}
						translate(v = [-7.5000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-7.5000000000, -7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [7.5000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [7.5000000000, -7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [-7.5000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-7.5000000000, 7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [7.5000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [7.5000000000, 7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						#translate(v = [-30.0000000000, -7.5000000000, 22.5000000000]) {
							rotate(a = [0, 90, 0]) {
								cylinder(h = 300, r = 3.0000000000);
							}
						}
						#translate(v = [-30.0000000000, 7.5000000000, 22.5000000000]) {
							rotate(a = [0, 90, 0]) {
								cylinder(h = 300, r = 3.0000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 39, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-9.5000000000, 9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [9.5000000000, 9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [-9.5000000000, -9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [9.5000000000, -9.5000000000, 0]) {
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
						translate(v = [-13.5000000000, 0, 15]) {
							rotate(a = [0, 90, 0]) {
								hull() {
									translate(v = [-10.0000000000, 10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [10.0000000000, 10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-10.0000000000, -10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [10.0000000000, -10.0000000000, 0]) {
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
										translate(v = [-9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [-9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [-9.5000000000, 9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [9.5000000000, 9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [-9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [-9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [-9.5000000000, -9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [9.5000000000, -9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
								}
							}
						}
						translate(v = [-7.5000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-7.5000000000, -7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [7.5000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [7.5000000000, -7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [-7.5000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-7.5000000000, 7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [7.5000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [7.5000000000, 7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						#translate(v = [-30.0000000000, -7.5000000000, 22.5000000000]) {
							rotate(a = [0, 90, 0]) {
								cylinder(h = 300, r = 3.0000000000);
							}
						}
						#translate(v = [-30.0000000000, 7.5000000000, 22.5000000000]) {
							rotate(a = [0, 90, 0]) {
								cylinder(h = 300, r = 3.0000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 78, 0]) {
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
									translate(v = [-9.5000000000, 9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [9.5000000000, 9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [-9.5000000000, -9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [9.5000000000, -9.5000000000, 0]) {
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
						translate(v = [-13.5000000000, 0, 15]) {
							rotate(a = [0, 90, 0]) {
								hull() {
									translate(v = [-10.0000000000, 10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [10.0000000000, 10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-10.0000000000, -10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [10.0000000000, -10.0000000000, 0]) {
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
										translate(v = [-9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [-9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [-9.5000000000, 9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [9.5000000000, 9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [-9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [-9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [-9.5000000000, -9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [9.5000000000, -9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
								}
							}
						}
						translate(v = [-7.5000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-7.5000000000, -7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [7.5000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [7.5000000000, -7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [-7.5000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-7.5000000000, 7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [7.5000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [7.5000000000, 7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						#translate(v = [-30.0000000000, -7.5000000000, 22.5000000000]) {
							rotate(a = [0, 90, 0]) {
								cylinder(h = 300, r = 3.0000000000);
							}
						}
						#translate(v = [-30.0000000000, 7.5000000000, 22.5000000000]) {
							rotate(a = [0, 90, 0]) {
								cylinder(h = 300, r = 3.0000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 117, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 4.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-9.5000000000, 9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [9.5000000000, 9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [-9.5000000000, -9.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 12, r = 5);
												}
											}
										}
									}
									translate(v = [9.5000000000, -9.5000000000, 0]) {
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
						translate(v = [-13.5000000000, 0, 15]) {
							rotate(a = [0, 90, 0]) {
								hull() {
									translate(v = [-10.0000000000, 10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [10.0000000000, 10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-10.0000000000, -10.0000000000, 0]) {
										rotate(a = [0, 90, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 90, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [10.0000000000, -10.0000000000, 0]) {
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
										translate(v = [-9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [-9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [-9.5000000000, 9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [9.5000000000, 9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [9.5000000000, 9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [-9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [-9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [-9.5000000000, -9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
									union() {
										translate(v = [9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 4);
													}
												}
											}
										}
										translate(v = [9.5000000000, -9.5000000000, 4]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
										translate(v = [9.5000000000, -9.5000000000, 28]) {
											rotate(a = [0, 0, 0]) {
												sphere(r = 4);
											}
										}
									}
								}
							}
						}
						translate(v = [-7.5000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-7.5000000000, -7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [7.5000000000, -7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [7.5000000000, -7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [-7.5000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-7.5000000000, 7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						translate(v = [7.5000000000, 7.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [7.5000000000, 7.5000000000, -3]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 6, r = 1.5000000000);
							}
						}
						#translate(v = [-30.0000000000, -7.5000000000, 22.5000000000]) {
							rotate(a = [0, 90, 0]) {
								cylinder(h = 300, r = 3.0000000000);
							}
						}
						#translate(v = [-30.0000000000, 7.5000000000, 22.5000000000]) {
							rotate(a = [0, 90, 0]) {
								cylinder(h = 300, r = 3.0000000000);
							}
						}
					}
				}
			}
		}
	}
}