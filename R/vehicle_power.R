# team members: Evan Heberlein, Nikole Vannest, Ruoyu Wang
# 2021-02-17
# Function to compute vehicle power

v_power <- function(v, m){
  # Rolling resisting coefficients
  c_rolling = 0.015
  
  # aerodynamic resisting coefficients
  c_drag = 0.3
  
  # acceleration due to gravity
  g = 9.8     # in m/s2
  
  # density of air
  p_air = 1.2 # in kg/m3
  
  # surface area of car 
  A = 9       # in m2
  # m, mass in kg
  # v, speed in m/s
  
  # Power required to keep a car moving at a given speed
  pb = c_rolling*m*g*v + 0.5*A*p_air*c_drag*v^3
  return(pb) # in Watts
  
}