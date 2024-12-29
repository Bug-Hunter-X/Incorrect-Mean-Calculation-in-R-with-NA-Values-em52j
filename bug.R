```R
# This function attempts to calculate the mean of a vector, but it has a subtle bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vector
  }
  sum_x <- sum(x, na.rm = TRUE) #remove NA values while calculating the sum
  mean_x <- sum_x / length(x) 
  return(mean_x)
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(1, 2, NA, 4, 5) # Vector containing NA values
vec3 <- numeric(0) #empty vector

print(calculate_mean(vec1)) # Correct output
print(calculate_mean(vec2)) #Incorrect output 
print(calculate_mean(vec3)) # Correct output
```