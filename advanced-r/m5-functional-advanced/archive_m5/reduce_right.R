# Custom reduce_right workaround
library(purrr)

reduce_right <- function(.x, .f, ...) {
  reduce(rev(.x), .f, ...)
}
