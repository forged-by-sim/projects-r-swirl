# Lesson 12 - Exploring a New Dataset (plants)
# This lesson covers how to explore and understand the structure of a dataset using R's built-in functions.

# Check what variables exist in your current environment
ls()

# Check the class of the 'plants' dataset
class(plants)
# [1] "data.frame"

# Check the dimensions: number of rows and columns
dim(plants)
# [1] 5166   10

# Check only the number of rows
nrow(plants)
# [1] 5166

# Check only the number of columns
ncol(plants)
# [1] 10

# Check how much memory space the dataset is using
object.size(plants)
# 745944 bytes

# Display the variable (column) names of the dataset
names(plants)
# [1] "Scientific_Name"    "Duration"            "Active_Growth_Period" "Foliage_Color"
#     "pH_Min" "pH_Max" "Precip_Min" "Precip_Max" "Shade_Tolerance" "Temp_Min_F"

# Preview the first 6 rows
head(plants)

# Preview the first 10 rows
head(plants, 10)

# Preview the last 15 rows
tail(plants, 15)

# Get a summary of the dataset, including min, max, mean, quartiles, etc.
summary(plants)

# Use table() to count frequency of each level in a factor variable
table(plants$Active_Growth_Period)

# Use str() to inspect the structure of the dataset (one of the most powerful tools)
str(plants)
