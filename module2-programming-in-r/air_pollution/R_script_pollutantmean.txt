pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  values <- numeric(0)
  
  for (i in id) {
    filename <- sprintf("%03d.csv", i)
    filepath <- file.path(directory, filename)
    
    data <- read.csv(filepath)
    
    values <- c(values, data[[pollutant]])
  }
  
  mean(values, na.rm = TRUE)
}
