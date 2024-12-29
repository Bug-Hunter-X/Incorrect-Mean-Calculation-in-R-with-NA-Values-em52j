# R Bug: Incorrect Mean Calculation with NA Values

This repository demonstrates a common yet subtle bug in R related to calculating the mean of a vector containing `NA` (Not Available) values. The provided R script (`bug.R`) shows a function that attempts to calculate the mean, but fails to handle `NA` values correctly resulting in an inaccurate mean. The solution (`bugSolution.R`) provides a corrected version of the function, ensuring accurate mean calculation even with `NA` values present. 

## Bug Description
The original function uses `sum(x, na.rm = TRUE)` which correctly handles `NA` values while summing. However, it divides by `length(x)` which includes the `NA` values in the count, leading to an incorrect mean.

## Solution
The solution uses `length(na.omit(x))` to calculate the length of the vector, excluding `NA` values. This ensures that the division is done by the correct number of non-`NA` values, resulting in an accurate mean. 