```r
# Improved code with error handling to prevent silent truncation

df <- data.frame(a = 1:5, b = 6:10)
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE) # Longer than df

if (length(logical_vector) > nrow(df)) {
  stop("Logical vector is longer than the number of rows in the data frame.")
}

subset_df <- df[logical_vector, ]
```