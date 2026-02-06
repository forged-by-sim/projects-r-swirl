# oop_code.R

# -----------------------------
# Constructor: make_LD
# -----------------------------
make_LD <- function(data) {
  if (!all(c("id", "visit", "room", "value", "timepoint") %in% names(data))) {
    stop("Data must contain: id, visit, room, value, timepoint")
  }
  structure(data, class = "LongitudinalData")
}

# -----------------------------
# subject() accessor
# -----------------------------
subject <- function(x, id) {
  UseMethod("subject")
}

subject.LongitudinalData <- function(x, id) {
  if (!(id %in% unique(x$id))) return(NULL)
  data <- x[x$id == id, ]
  structure(list(id = id, data = data), class = "subject")
}

# -----------------------------
# visit() accessor
# -----------------------------
visit <- function(x, visit_no) {
  UseMethod("visit")
}

visit.subject <- function(x, visit_no) {
  data <- x$data[x$data$visit == visit_no, ]
  structure(list(id = x$id, visit = visit_no, data = data), class = "visit")
}

# -----------------------------
# room() accessor
# -----------------------------
room <- function(x, room_name) {
  UseMethod("room")
}

room.visit <- function(x, room_name) {
  data <- x$data[x$data$room == room_name, ]
  structure(list(id = x$id, visit = x$visit, room = room_name, data = data), class = "room")
}

# -----------------------------
# summary() methods
# -----------------------------
summary.LongitudinalData <- function(object, ...) {
  ids <- unique(object$id)
  n_obs <- sapply(ids, function(i) sum(object$id == i))
  df <- data.frame(id = ids, n = n_obs)
  structure(df, class = "summary_LongitudinalData")
}

summary.subject <- function(object, ...) {
  out <- aggregate(value ~ visit + room, object$data, mean)
  structure(out, class = "summary_subject")
}

summary.room <- function(object, ...) {
  df <- object$data[, c("timepoint", "value")]
  df <- df[order(df$timepoint), ]
  rownames(df) <- NULL
  return(df)
}

# -----------------------------
# print() methods
# -----------------------------
print.LongitudinalData <- function(x, ...) {
  cat("Longitudinal dataset with", length(unique(x$id)), "subjects\n")
  invisible(x)
}

print.subject <- function(x, ...) {
  cat("Subject ID:", x$id, "\n")
  invisible(x)
}

print.visit <- function(x, ...) {
  cat("Visit:", x$visit, "for subject", x$id, "\n")
  invisible(x)
}

print.room <- function(x, ...) {
  cat("Room:", x$room, "during visit", x$visit, "for subject", x$id, "\n")
  invisible(x)
}

print.summary_LongitudinalData <- function(x, ...) {
  print.data.frame(x)
  invisible(x)
}

print.summary_subject <- function(x, ...) {
  print.data.frame(x)
  invisible(x)
}

# -----------------------------
# Add class to room summary
# -----------------------------
summary.room <- function(object, ...) {
  df <- object$data[, c("timepoint", "value")]
  df <- df[order(df$timepoint), ]
  rownames(df) <- NULL
  structure(df, class = "summary_room")
}

# -----------------------------
# Add print method for room summary
# -----------------------------
print.summary_room <- function(x, ...) {
  print.data.frame(x)
  invisible(x)
}


