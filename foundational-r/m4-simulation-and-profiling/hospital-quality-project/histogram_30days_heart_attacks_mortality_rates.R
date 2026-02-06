outcome <- read.csv("hospital_quality_data/outcome-of-care-measures.csv",
                    colClasses = "character")
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])



