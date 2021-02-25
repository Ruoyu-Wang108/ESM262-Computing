# team members: Evan Heberlein, Ruoyu Wang
# 2021-02-17
# Function to compute vehicle power

v_power <- function(v, m, A, c_rolling = 0.015){
  # Rolling resisting coefficients c_rolling
  
  # aerodynamic resisting coefficients
  c_drag = 0.3
  
  # acceleration due to gravity
  g = 9.8     # in m/s2
  
  # density of air
  p_air = 1.2 # in kg/m3
  
  # surface area of car 
  # A  in m2
  # the surface area should be more than 0, if not, return NAs
  A = ifelse((A <= 0), NA, A)
  
  # m, mass in kg
  m = ifelse((m <= 0), return("Car mass must be greater than zero"), m)
  
  # v, speed in m/s
  v = ifelse((v < 0), NA, v)
  
  # Power required to keep a car moving at a given speed
  pb = c_rolling*m*g*v + 0.5*A*p_air*c_drag*v^3
  return(pb) # in Watts
  
}
