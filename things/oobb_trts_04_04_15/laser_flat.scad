$fn = 50;


union() {
	translate(v = [0, 0, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -6.0000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-25.0000000000, 25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [25.0000000000, 25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [-25.0000000000, -25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [25.0000000000, -25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-25.0000000000, 25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [25.0000000000, 25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-25.0000000000, -25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [25.0000000000, -25.0000000000, 110.5000000000]) {
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
						translate(v = [-22.5000000000, -22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 2.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 2.5000000000);
							}
						}
						translate(v = [-23.5000000000, -23.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [23.5000000000, 23.5000000000, 0]) {
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
						translate(v = [-22.5000000000, -22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, -22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, 22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 15]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 15, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 15]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 15, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 69, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -3.0000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-25.0000000000, 25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [25.0000000000, 25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [-25.0000000000, -25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [25.0000000000, -25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-25.0000000000, 25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [25.0000000000, 25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-25.0000000000, -25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [25.0000000000, -25.0000000000, 110.5000000000]) {
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
						translate(v = [-22.5000000000, -22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 2.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 2.5000000000);
							}
						}
						translate(v = [-23.5000000000, -23.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [23.5000000000, 23.5000000000, 0]) {
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
						translate(v = [-22.5000000000, -22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, -22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, 22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 15]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 15, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 15]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 15, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 138, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 0.0000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-25.0000000000, 25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [25.0000000000, 25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [-25.0000000000, -25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [25.0000000000, -25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-25.0000000000, 25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [25.0000000000, 25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-25.0000000000, -25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [25.0000000000, -25.0000000000, 110.5000000000]) {
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
						translate(v = [-22.5000000000, -22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 2.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 2.5000000000);
							}
						}
						translate(v = [-23.5000000000, -23.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [23.5000000000, 23.5000000000, 0]) {
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
						translate(v = [-22.5000000000, -22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, -22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, 22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 15]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 15, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 15]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 15, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 207, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 3.0000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-25.0000000000, 25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [25.0000000000, 25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [-25.0000000000, -25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [25.0000000000, -25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-25.0000000000, 25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [25.0000000000, 25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-25.0000000000, -25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [25.0000000000, -25.0000000000, 110.5000000000]) {
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
						translate(v = [-22.5000000000, -22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 2.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 2.5000000000);
							}
						}
						translate(v = [-23.5000000000, -23.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [23.5000000000, 23.5000000000, 0]) {
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
						translate(v = [-22.5000000000, -22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, -22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, 22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 15]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 15, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 15]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 15, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 276, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 6.0000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								difference() {
									hull() {
										translate(v = [-25.0000000000, 25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [25.0000000000, 25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [-25.0000000000, -25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
										translate(v = [25.0000000000, -25.0000000000, 0]) {
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 0, 0]) {
													rotate(a = [0, 0, 0]) {
														cylinder(h = 15, r = 5);
													}
												}
											}
										}
									}
									translate(v = [0, 0, 0.5000000000]) {
										hull() {
											union() {
												translate(v = [-25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-25.0000000000, 25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [25.0000000000, 25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [25.0000000000, 25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [-25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [-25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [-25.0000000000, -25.0000000000, 110.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
											}
											union() {
												translate(v = [25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														translate(v = [0, 0, 0]) {
															rotate(a = [0, 0, 0]) {
																cylinder(h = 106.0000000000, r = 4.5000000000);
															}
														}
													}
												}
												translate(v = [25.0000000000, -25.0000000000, 4.5000000000]) {
													rotate(a = [0, 0, 0]) {
														sphere(r = 4.5000000000);
													}
												}
												translate(v = [25.0000000000, -25.0000000000, 110.5000000000]) {
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
						translate(v = [-22.5000000000, -22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 2.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 2.5000000000);
							}
						}
						translate(v = [-23.5000000000, -23.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [-1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, 1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [-1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
									translate(v = [1.5000000000, -1.5000000000, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 11, r = 5);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [23.5000000000, 23.5000000000, 0]) {
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
						translate(v = [-22.5000000000, -22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, -22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, 22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, -50]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 100, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 11, r = 1.5000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [-22.5000000000, -22.5000000000, 15]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 15, r = 1.5000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 3]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 3, r1 = 2.4000000000, r2 = 2.4000000000);
							}
						}
						translate(v = [22.5000000000, 22.5000000000, 15]) {
							rotate(a = [0, 180, 0]) {
								cylinder(h = 15, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
}