
# Histogram of 30-day heart attack mortality rates

# Load dataset
outcome <- read.csv("hospital_quality_data/outcome-of-care-measures.csv", 
                    colClasses = "character")

# Convert mortality rate column to numeric
outcome[, 11] <- as.numeric(outcome[, 11])

# Plot histogram
hist(outcome[, 11], 
     main = "30-Day Heart Attack Mortality Rates",
     xlab = "Mortality Rate (%)",
     col = "steelblue")
