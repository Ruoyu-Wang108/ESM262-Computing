# Ruoyu Wang
# Assignment 3 part 2
# using "case_when" to create a function

# Season Finder
# assign correct seasons for corresponding months

season_finder <- function(month){
  if (month %in% c(1:12)){
    month = case_when(
      month %in% c(1,2,12) ~ "Winter",
      month %in% c(3:5) ~ "Spring",
      month %in% c(6:8) ~ "Summer",
      TRUE ~ "Fall"
    )
  } else {
    warning("Whoops! Wasn't expecting that. Double check your inputs. Make sure that value of month only range from 1 to 12.")
    return(NA)
  }
}


