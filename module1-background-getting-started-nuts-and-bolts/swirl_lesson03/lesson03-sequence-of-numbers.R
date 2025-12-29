# Lesson 03: Sequences of Numbers in R

# Basic sequences using colon operator
1:20                     # Sequence from 1 to 20
pi:10                    # Starts at pi, increments by 1 until just before 10
15:1                     # Backwards sequence from 15 to 1

# Pulling documentation for symbols
?"`:`"                   # Help on colon operator (backticks are necessary!)

# More flexible sequences using seq()
seq(1, 20)                             # Same as 1:20
seq(0, 10, by = 0.5)                   # Sequence from 0 to 10 in 0.5 increments
my_seq <- seq(5, 10, length = 30)     # 30 equally spaced numbers from 5 to 10

# View the length of the vector
length(my_seq)

# Create a sequence from 1 to N (where N is the length of my_seq)
1:length(my_seq)

# Alternative way to generate same result
seq(along.with = my_seq)
seq_along(my_seq)

# Repetition with rep()
rep(0, times = 40)                            # Repeat 0 forty times
rep(c(0, 1, 2), times = 10)                   # Repeat the full vector ten times
rep(c(0, 1, 2), each = 10)                    # Repeat each element ten times
