$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				difference() {
					hull() {
						translate(v = [-2.5000000000, 10.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 15, r = 5);
									}
								}
							}
						}
						translate(v = [2.5000000000, 10.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 15, r = 5);
									}
								}
							}
						}
						translate(v = [-2.5000000000, -10.0000000000, 0]) {
							rotate(a = [0, 0, 0]) {
								translate(v = [0, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										cylinder(h = 15, r = 5);
									}
								}
							}
						}
						translate(v = [2.5000000000, -10.0000000000, 0]) {
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
								translate(v = [-2.5000000000, 10.0000000000, 4.5000000000]) {
									rotate(a = [0, 0, 0]) {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												cylinder(h = 106.0000000000, r = 4.5000000000);
											}
										}
									}
								}
								translate(v = [-2.5000000000, 10.0000000000, 4.5000000000]) {
									rotate(a = [0, 0, 0]) {
										sphere(r = 4.5000000000);
									}
								}
								translate(v = [-2.5000000000, 10.0000000000, 110.5000000000]) {
									rotate(a = [0, 0, 0]) {
										sphere(r = 4.5000000000);
									}
								}
							}
							union() {
								translate(v = [2.5000000000, 10.0000000000, 4.5000000000]) {
									rotate(a = [0, 0, 0]) {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												cylinder(h = 106.0000000000, r = 4.5000000000);
											}
										}
									}
								}
								translate(v = [2.5000000000, 10.0000000000, 4.5000000000]) {
									rotate(a = [0, 0, 0]) {
										sphere(r = 4.5000000000);
									}
								}
								translate(v = [2.5000000000, 10.0000000000, 110.5000000000]) {
									rotate(a = [0, 0, 0]) {
										sphere(r = 4.5000000000);
									}
								}
							}
							union() {
								translate(v = [-2.5000000000, -10.0000000000, 4.5000000000]) {
									rotate(a = [0, 0, 0]) {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												cylinder(h = 106.0000000000, r = 4.5000000000);
											}
										}
									}
								}
								translate(v = [-2.5000000000, -10.0000000000, 4.5000000000]) {
									rotate(a = [0, 0, 0]) {
										sphere(r = 4.5000000000);
									}
								}
								translate(v = [-2.5000000000, -10.0000000000, 110.5000000000]) {
									rotate(a = [0, 0, 0]) {
										sphere(r = 4.5000000000);
									}
								}
							}
							union() {
								translate(v = [2.5000000000, -10.0000000000, 4.5000000000]) {
									rotate(a = [0, 0, 0]) {
										translate(v = [0, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												cylinder(h = 106.0000000000, r = 4.5000000000);
											}
										}
									}
								}
								translate(v = [2.5000000000, -10.0000000000, 4.5000000000]) {
									rotate(a = [0, 0, 0]) {
										sphere(r = 4.5000000000);
									}
								}
								translate(v = [2.5000000000, -10.0000000000, 110.5000000000]) {
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
		translate(v = [0.0000000000, -7.5000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 11, r = 2.5000000000);
			}
		}
		translate(v = [0.0000000000, 7.5000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 11, r = 2.5000000000);
			}
		}
		translate(v = [-1.0000000000, -8.5000000000, 0]) {
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
		translate(v = [-1.0000000000, 6.5000000000, 0]) {
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
	}
	union() {
		translate(v = [0.0000000000, -7.5000000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 100, r = 1.5000000000);
			}
		}
		translate(v = [0.0000000000, -7.5000000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 100, r = 1.5000000000);
			}
		}
		translate(v = [0.0000000000, 7.5000000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 100, r = 1.5000000000);
			}
		}
		translate(v = [0.0000000000, 7.5000000000, -50]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 100, r = 1.5000000000);
			}
		}
		translate(v = [0.0000000000, -7.5000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 11, r = 1.5000000000);
			}
		}
		translate(v = [0.0000000000, 7.5000000000, 0]) {
			rotate(a = [0, 0, 0]) {
				cylinder(h = 11, r = 1.5000000000);
			}
		}
		translate(v = [0.0000000000, -7.5000000000, 1.7000000000]) {
			rotate(a = [0, 180, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [0.0000000000, -7.5000000000, 15]) {
			rotate(a = [0, 180, 0]) {
				cylinder(h = 15, r = 1.5000000000);
			}
		}
		translate(v = [0.0000000000, 7.5000000000, 1.7000000000]) {
			rotate(a = [0, 180, 0]) {
				cylinder(h = 1.7000000000, r1 = 1.5000000000, r2 = 2.9000000000);
			}
		}
		translate(v = [0.0000000000, 7.5000000000, 15]) {
			rotate(a = [0, 180, 0]) {
				cylinder(h = 15, r = 1.5000000000);
			}
		}
	}
}