# Ruoyu Wang
# Assignment 3 part 1
# Using "while" loop to create a function

# Estimate the highest "velocity" to stop a car within 100 m for different road (with different friction coefficient)


safe_speed <- function(v, mu, safe_distance, 
                       g = 9.8, d = 0){
  # v, in m/s, the starting speed for calculation.
  v = ifelse(v < 0, return("Speed cannot be less than zero!"), v)
  
  # safe_distance, in m, the goal of braking distance
  safe_distance = ifelse(safe_distance < 0, 
                         return("Target Distance cannot be less than zero!"), 
                         safe_distance)
  
  
  # mu, no unit, the friction coefficient, need to identify for different roads.
  
  # g, in m/s2, acceleration of gravity, a constant.

  # d, in m, the braking distance to be calculate in the loop, the initial default is 0
  
  # time tracker
  i = 1
  
  while ((d < safe_distance) && (i < 1000))  {
    
    # d, in m, is the technical braking distance 
    d = v^2 / (2 * mu * g) 
    
    # After each attempt, the velocity will decrease 0.1 unit
    v = v + 0.1
    
    # keep track of the times of attempt
    i = i + 1
  }
  
  return(v)
  
}

