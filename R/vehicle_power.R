v_power <- function(v, m){
  c_rolling = 0.015
  c_drag = 0.3
  g = 9.8
  p_air = 1.2
  A = 9
  
  pb = c_rolling*m*g*v + 0.5*A*p_air*c_drag*v^3
  return(pb)
  
}