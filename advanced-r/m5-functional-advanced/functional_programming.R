
## Functional Programming with purrr

library(purrr)

# map family ---------------------------------------------------------------

map_chr(c(5, 3, 4), int_to_string)

map_lgl(c(1, 2, 3, 4, 5), gt, b = 3)

map_if(c(1, 2, 3, 4), is_even, square)

map_at(c(4, 6, 2, 3, 8), c(1, 3, 4), square)

# map2 family --------------------------------------------------------------

map2_chr(letters, 1:26, paste)

# reduce family ------------------------------------------------------------

reduce(c(1, 3, 5, 7), add_talk)

reduce(c("a", "b", "c", "d"), paste_talk)

reduce(c("a", "b", "c", "d"), paste_talk, .dir = "backward") # soft-deprecated

# detect family ------------------------------------------------------------

random_ints <- c(27, 89, 41, 67, 95, 85, 81, 101, 77, 37, 61, 99, 23, 43, 71,
                 47, 45, 55, 97, 57, 39, 25, 87, 63, 91, 51, 79, 93, 53, 33,
                 73, 29, 21, 59, 31, 35, 49, 69, 75, 83, 65, 8, 6, 10)

has_element(random_ints, 45)

detect(random_ints, is_even)

detect_index(random_ints, is_even)

# filter functions ---------------------------------------------------------

keep(random_ints, is_even)

discard(random_ints, is_even)

every(random_ints, ~ .x < 100)

# partial() ----------------------------------------------------------------

gt_10 <- partial(gt, b = 10)
gt_10(11)

# walk() -------------------------------------------------------------------

mark_antony <- c(
  "Friends, Romans, countrymen,",
  "lend me your ears;",
  "I come to bury Caesar,",
  "not to praise him."
)

walk(mark_antony, message)

