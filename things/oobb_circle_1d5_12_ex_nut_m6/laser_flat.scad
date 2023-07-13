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
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 12, r = 10.2500000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [0, 7.5000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [0, -7.5000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [7.7500000000, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
									translate(v = [-0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-7.7500000000, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
									translate(v = [-0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 15.0000000000]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 15.0000000000]) {
										linear_extrude(height = 5) {
											polygon(points = [[5.7700000000, 0.0000000000], [2.8850000000, 4.9969665798], [-2.8850000000, 4.9969665798], [-5.7700000000, 0.0000000000], [-2.8850000000, -4.9969665798], [2.8850000000, -4.9969665798]]);
										}
									}
								}
							}
						}
						#translate(v = [7.5000000000, 0, 3]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						#translate(v = [7.5000000000, 0, -9]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
						#translate(v = [-7.5000000000, 0, 3]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						#translate(v = [-7.5000000000, 0, -9]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 110, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, -1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 12, r = 10.2500000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [0, 7.5000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [0, -7.5000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [7.7500000000, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
									translate(v = [-0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-7.7500000000, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
									translate(v = [-0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 15.0000000000]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 15.0000000000]) {
										linear_extrude(height = 5) {
											polygon(points = [[5.7700000000, 0.0000000000], [2.8850000000, 4.9969665798], [-2.8850000000, 4.9969665798], [-5.7700000000, 0.0000000000], [-2.8850000000, -4.9969665798], [2.8850000000, -4.9969665798]]);
										}
									}
								}
							}
						}
						#translate(v = [7.5000000000, 0, 3]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						#translate(v = [7.5000000000, 0, -9]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
						#translate(v = [-7.5000000000, 0, 3]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						#translate(v = [-7.5000000000, 0, -9]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 220, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 1.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 12, r = 10.2500000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [0, 7.5000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [0, -7.5000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [7.7500000000, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
									translate(v = [-0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-7.7500000000, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
									translate(v = [-0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 15.0000000000]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 15.0000000000]) {
										linear_extrude(height = 5) {
											polygon(points = [[5.7700000000, 0.0000000000], [2.8850000000, 4.9969665798], [-2.8850000000, 4.9969665798], [-5.7700000000, 0.0000000000], [-2.8850000000, -4.9969665798], [2.8850000000, -4.9969665798]]);
										}
									}
								}
							}
						}
						#translate(v = [7.5000000000, 0, 3]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						#translate(v = [7.5000000000, 0, -9]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
						#translate(v = [-7.5000000000, 0, 3]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						#translate(v = [-7.5000000000, 0, -9]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 330, 0]) {
		projection() {
			intersection() {
				translate(v = [-500, -500, 4.5000000000]) {
					cube(size = [1000, 1000, 0.1000000000]);
				}
				difference() {
					union() {
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 12, r = 10.2500000000);
							}
						}
					}
					union() {
						translate(v = [0, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 3.0000000000);
							}
						}
						translate(v = [0, 7.5000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [0, -7.5000000000, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								cylinder(h = 250, r = 1.5000000000);
							}
						}
						translate(v = [7.7500000000, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
									translate(v = [-0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [-7.7500000000, 0, -125.0000000000]) {
							rotate(a = [0, 0, 0]) {
								hull() {
									translate(v = [0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
									translate(v = [-0.2500000000, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											translate(v = [0, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													cylinder(h = 250, r = 1.5000000000);
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, -6.0000000000]) {
							rotate(a = [0, 0, 15.0000000000]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 15.0000000000]) {
										linear_extrude(height = 5) {
											polygon(points = [[5.7700000000, 0.0000000000], [2.8850000000, 4.9969665798], [-2.8850000000, 4.9969665798], [-5.7700000000, 0.0000000000], [-2.8850000000, -4.9969665798], [2.8850000000, -4.9969665798]]);
										}
									}
								}
							}
						}
						#translate(v = [7.5000000000, 0, 3]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						#translate(v = [7.5000000000, 0, -9]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
						#translate(v = [-7.5000000000, 0, 3]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 3, r = 2.9000000000);
							}
						}
						#translate(v = [-7.5000000000, 0, -9]) {
							rotate(a = [0, 0, 15.0000000000]) {
								cylinder(h = 12, r = 1.5000000000);
							}
						}
					}
				}
			}
		}
	}
}