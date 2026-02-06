# Lesson 11: Working with sapply(), vapply(), and tapply()

# Dataset: Flags (UCI Machine Learning Repository)
# Assume `flags` dataset is preloaded

# View unique values in each column using sapply
sapply(flags, unique)

# Test how sapply simplifies unique values across columns
# Expected: Each column's unique values returned as vectors

# Illustrating where vapply() throws an error due to type mismatch
# vapply(flags, unique, numeric(1))  # This will error intentionally

# Confirm understanding with:
ok()

# Use sapply to examine column data types
sapply(flags, class)

# Use vapply for the same purpose, explicitly expecting character output
vapply(flags, class, character(1))

# Explore how many flags are in each landmass group (1 to 6)
table(flags$landmass)

# How many flags have an animate object (1 = yes, 0 = no)?
table(flags$animate)

# What proportion of flags in each landmass group have animate images?
tapply(flags$animate, flags$landmass, mean)

# Population summary by whether the flag contains red
tapply(flags$population, flags$red, summary)

# Median population of countries without red on their flag (red == 0)
# Output from above: median = 3.0

# Summary of population values for each landmass
tapply(flags$population, flags$landmass, summary)

# Max population for fourth landmass group (Africa)
# Output from above: max = 56.0
