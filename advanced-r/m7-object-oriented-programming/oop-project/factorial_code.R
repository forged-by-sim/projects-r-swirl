# Load required libraries
library(microbenchmark)
library(purrr)

# ----------------------------
# 1. Factorial using for-loop
# ----------------------------
factorial_loop <- function(n) {
  if (n == 0) return(1)
  result <- 1
  for (i in 1:n) {
    result <- result * i
  }
  return(result)
}

# ----------------------------------------
# 2. Factorial using Reduce (purrr or base)
# ----------------------------------------
factorial_reduce <- function(n) {
  if (n == 0) return(1)
  Reduce(`*`, 1:n)
}

# --------------------------------------
# 3. Factorial using recursion
# --------------------------------------
factorial_func <- function(n) {
  if (n == 0) return(1)
  n * factorial_func(n - 1)
}

# --------------------------------------
# 4. Factorial using memoization
# --------------------------------------
factorial_mem <- (function() {
  cache <- c(`0` = 1, `1` = 1)
  function(n) {
    if (!is.null(cache[[as.character(n)]])) {
      return(cache[[as.character(n)]])
    }
    result <- n * Recall(n - 1)
    cache[[as.character(n)]] <<- result
    return(result)
  }
})()

# --------------------------------------
# Benchmarking
# --------------------------------------

# Benchmark individual inputs
inputs <- c(0, 1, 6, 11, 13, 45, 63)
results_individual <- lapply(inputs, function(x) {
  microbenchmark(
    factorial_loop(x),
    factorial_reduce(x),
    factorial_func(x),
    factorial_mem(x),
    times = 100
  )
})
names(results_individual) <- as.character(inputs)

# Benchmark ranges
x <- 1:10
bench_range_10 <- microbenchmark(
  map_dbl(x, factorial_loop),
  map_dbl(x, factorial_reduce),
  map_dbl(x, factorial_func),
  map_dbl(x, factorial_mem),
  times = 100
)

x <- 1:50
bench_range_50 <- microbenchmark(
  map_dbl(x, factorial_loop),
  map_dbl(x, factorial_reduce),
  map_dbl(x, factorial_func),
  map_dbl(x, factorial_mem),
  times = 100
)

x <- 1:100
bench_range_100 <- microbenchmark(
  map_dbl(x, factorial_loop),
  map_dbl(x, factorial_reduce),
  map_dbl(x, factorial_func),
  map_dbl(x, factorial_mem),
  times = 100
)

# Collect all benchmarks into a list
benchmark_results <- c(results_individual, list(
  `range 1:10` = bench_range_10,
  `range 1:50` = bench_range_50,
  `range 1:100` = bench_range_100
))

# Optional: Print summary to console (or write to output file manually)
# lapply(benchmark_results, summary)

