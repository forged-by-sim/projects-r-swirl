# Lesson 14 - Dates and Times

# Current Date
d1 <- Sys.Date()
class(d1)
unclass(d1)
d1

# Pre-1970 Date
d2 <- as.Date("1969-01-01")
unclass(d2)

# Current DateTime
t1 <- Sys.time()
t1
class(t1)
unclass(t1)

# Convert to POSIXlt
t2 <- as.POSIXlt(Sys.time())
class(t2)
t2
unclass(t2)
str(unclass(t2))

# Accessing minute field
t2$min

# Extract date parts
weekdays(d1)
months(t1)
quarters(t2)

# Character to POSIXlt conversion
t3 <- "October 17, 1986 08:24"
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)

# Time arithmetic
Sys.time() > t1
Sys.time() - t1
difftime(Sys.time(), t1, units = "days")
