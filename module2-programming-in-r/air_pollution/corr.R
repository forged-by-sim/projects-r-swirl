corr <- function(directory, threshold = 0) {
  
  correlations <- numeric(0)
  
  for (i in 1:332) {
    filename <- sprintf("%03d.csv", i)
    filepath <- file.path(directory, filename)
    
    data <- read.csv(filepath)
    
    complete_data <- data[complete.cases(data), ]
    
    if (nrow(complete_data) > threshold) {
      cval <- cor(complete_data$sulfate, complete_data$nitrate)
      correlations <- c(correlations, cval)
    }
  }
  
  correlations
}
