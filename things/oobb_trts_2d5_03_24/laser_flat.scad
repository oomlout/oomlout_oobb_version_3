$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -10.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [-13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [-12.2500000000, -16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [12.2500000000, 16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
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
						translate(v = [-11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 54, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -7.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [-13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [-12.2500000000, -16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [12.2500000000, 16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
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
						translate(v = [-11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 108, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -4.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [-13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [-12.2500000000, -16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [12.2500000000, 16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
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
						translate(v = [-11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 162, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [-13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [-12.2500000000, -16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [12.2500000000, 16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
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
						translate(v = [-11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 216, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [-13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [-12.2500000000, -16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [12.2500000000, 16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
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
						translate(v = [-11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 270, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 4.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [-13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [-12.2500000000, -16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [12.2500000000, 16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
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
						translate(v = [-11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 324, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 7.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [-13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [-12.2500000000, -16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [12.2500000000, 16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
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
						translate(v = [-11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 378, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 10.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, 17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [-13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
										translate(v = [13.7500000000, -17.5000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 24, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, 17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 115.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [13.7500000000, -17.5000000000, 119.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 2.5000000000);
							}
						}
						translate(v = [-12.2500000000, -16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 20, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [12.2500000000, 16.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 3, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
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
						translate(v = [-11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, -15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 20, r = 1.5000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-11.2500000000, -15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [11.2500000000, 15.0000000000, 24]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 24, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
}