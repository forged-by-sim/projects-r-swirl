# Lesson 8: Logical Operations in R

# Equality operator
TRUE == TRUE
(FALSE == TRUE) == FALSE

# Numeric equality
6 == 7

# Inequality operators
6 < 7
10 <= 10

# Multiple choice (evaluate which expressions are TRUE/FALSE)
# FALSE expression:
9 > 10

# TRUE expression:
-6 > -7

# Not equal to operator
5 != 7

# NOT operator
!(5 == 7)

# Evaluating logical statements
7 == 8         # FALSE
FALSE          # FALSE
9 < 10         # TRUE
!(0 > -1)      # TRUE

# Evaluating complex logical expression
(TRUE != FALSE) == !(6 == 7)

# AND operator
FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)

# OR operator
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)

# Complex expression with order of operations
5 > 8 || 6 != 8 && 4 > 3.9

# Evaluate which expression is TRUE
TRUE && FALSE || 9 >= 4 && 3 < 6
# TRUE expression: 3rd one is incorrect, 4th one is TRUE
# (TRUE && FALSE || 9 >= 4 && 3 < 6)

# Evaluate which expression is FALSE
6 == 9 && (6 < 7) || (!TRUE)

# isTRUE function
isTRUE(6 > 4)

# isTRUE examples
isTRUE(8 != 5)

# identical function
identical("twins", "twins")

# More identical examples
identical(5 > 4, 3 < 1)

# xor function
xor(5 == 6, !FALSE)

# xor examples
xor(4 >= 9, 8 == 8.0)

# Vector sampling
ints <- sample(10)
ints

# Logical test on vector
ints > 5

# Use which() function
which(ints > 7)

# Which indices are less than or equal to 2?
which(ints <= 2)

# any() and all() functions
any(ints < 0)
all(ints > 0)

# Evaluate which expression is TRUE
any(ints == 2.5)
