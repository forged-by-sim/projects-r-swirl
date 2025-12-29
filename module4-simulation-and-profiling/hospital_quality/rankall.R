rankall <- function(outcome, num = "best") {
  
  ## Read data
  outcome_data <- read.csv(
    "hospital_quality_data/outcome-of-care-measures.csv",
    colClasses = "character"
  )
  
  ## Outcome → column mapping
  outcome_col <- switch(
    outcome,
    "heart attack"  = 11,
    "heart failure" = 17,
    "pneumonia"     = 23,
    stop("invalid outcome")
  )
  
  ## Get list of states
  states <- sort(unique(outcome_data$State))
  
  ## Initialize result
  result <- data.frame(
    hospital = character(length(states)),
    state = states,
    stringsAsFactors = FALSE
  )
  
  ## Loop over states
  for (i in seq_along(states)) {
    
    state_data <- outcome_data[outcome_data$State == states[i], ]
    state_data[, outcome_col] <- as.numeric(state_data[, outcome_col])
    state_data <- state_data[!is.na(state_data[, outcome_col]), ]
    
    state_data <- state_data[
      order(state_data[, outcome_col], state_data$Hospital.Name),
    ]
    
    ## Determine rank
    if (num == "best") {
      rank <- 1
    } else if (num == "worst") {
      rank <- nrow(state_data)
    } else {
      rank <- num
    }
    
    ## Assign hospital or NA
    if (rank > nrow(state_data) || nrow(state_data) == 0) {
      result$hospital[i] <- NA
    } else {
      result$hospital[i] <- state_data$Hospital.Name[rank]
    }
  }
  
  result
}
