# Lesson 13: Simulation 

# View documentation for sample()
?sample

# Simulate rolling four six-sided dice with replacement
sample(1:6, 4, replace = TRUE)

# Repeat the same to observe different result
sample(1:6, 4, replace = TRUE)

# Sample 10 numbers between 1 and 20 without replacement
sample(1:20, 10)

# View built-in LETTERS variable (A-Z)
LETTERS

# Permute all 26 letters in the alphabet
sample(LETTERS)

# Simulate 100 flips of an unfair coin (0 = tails, 1 = heads, with 70% heads)
flips <- sample(c(0, 1), size = 100, replace = TRUE, prob = c(0.3, 0.7))

# View result of flips
flips

# Count number of heads (1s)
sum(flips)

# View documentation for binomial distribution
?rbinom

# Generate 1 observation: number of heads in 100 flips, prob = 0.7
rbinom(1, size = 100, prob = 0.7)

# Generate 100 binary outcomes: 100 flips, each with prob 0.7 for heads
flips2 <- rbinom(n = 100, size = 1, prob = 0.7)

# View flips2 result
flips2

# Count number of heads in flips2
sum(flips2)

# View documentation for normal distribution
?rnorm

# Generate 10 random numbers from standard normal distribution
rnorm(10)

# Generate 25 random numbers from normal distribution with mean 100, sd 25
rnorm(25, mean = 100, sd = 25)

# Generate 10 such numbers with specified mean and sd
rnorm(10, mean = 100, sd = 25)

# View documentation for Poisson distribution
?rpois

# Generate 5 Poisson-distributed values with mean 10
rpois(5, 10)

# Replicate this process 100 times to create 100 groups of 5 values
my_pois <- replicate(100, rpois(5, 10))

# View the matrix of results
my_pois

# Calculate column means (mean of each group of 5)
cm <- colMeans(my_pois)

# Plot histogram of the column means
hist(cm)
