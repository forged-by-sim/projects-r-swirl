complete <- function(directory, id = 1:332) {
  
  result <- data.frame(id = integer(0), nobs = integer(0))
  
  for (i in id) {
    filename <- sprintf("%03d.csv", i)
    filepath <- file.path(directory, filename)
    
    data <- read.csv(filepath)
    
    complete_rows <- complete.cases(data)
    nobs <- sum(complete_rows)
    
    result <- rbind(result, data.frame(id = i, nobs = nobs))
  }
  
  result
}
