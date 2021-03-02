# ESM 262 Assignment 4
# Gabriel De La Rosa, Quin Smith, Ruoyu Wang
# function to count fish

# Variable inputs
# fish, a vector of different fish
# hist.plot, whether to include a histogram as part of the output

fish_count <- function(fish, hist.plot = FALSE){
  fish = as.factor(fish)
  most_fish = names(which.max(summary(fish)))
  rarest_fish = names(which.min(summary(fish)))
  total_fish = sum(summary(fish))
  
  
  if(hist.plot) {
    return(list(most = most_fish, rarest = rarest_fish, total = total_fish, fish_plot = plot(fish,
                                                                                           main = sprintf("%i Total Fish Caught", total_fish))))
  } else {
    return(list(most = most_fish, rarest = rarest_fish, total = total_fish))
    }
  
}