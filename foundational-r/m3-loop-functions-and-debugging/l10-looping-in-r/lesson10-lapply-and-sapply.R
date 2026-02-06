# Lesson 10: lapply and sapply

# Load the dataset
head(flags)
dim(flags)
class(flags)

# Apply class() to each column using lapply
cls_list <- lapply(flags, class)
cls_list
class(cls_list)
as.character(cls_list)

# Use sapply to simplify the result
cls_vect <- sapply(flags, class)
class(cls_vect)

# Explore color columns (columns 11 to 17)
sum(flags$orange)
flag_colors <- flags[, 11:17]
head(flag_colors)

# Use lapply and sapply to sum color usage
lapply(flag_colors, sum)
sapply(flag_colors, sum)

# Use sapply to calculate the proportion of flags using each color
sapply(flag_colors, mean)

# Explore shape columns (columns 19 to 23)
flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)

# unique() function example
unique(c(3, 4, 5, 5, 5, 6, 6))

# Apply unique() to each column of the dataset
unique_vals <- lapply(flags, unique)
unique_vals

# Use sapply to find number of unique values per column
sapply(unique_vals, length)

# Re-apply unique using sapply (will not simplify due to uneven lengths)
unique_vals <- sapply(flags, unique)
unique_vals

# Using an anonymous function with lapply to get the second element of each
lapply(unique_vals, function(elem) elem[2])
