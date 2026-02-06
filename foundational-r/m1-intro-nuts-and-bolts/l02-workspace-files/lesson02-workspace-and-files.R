# Lesson 02: Workspace and Files

# Save current directory
old.dir <- getwd()

# Create a new directory
dir.create("testdir")

# Set working directory to the new folder
setwd("testdir")

# Create a new file
file.create("mytest.R")

# Confirm the file exists
file.exists("mytest.R")

# Inspect file info
file.info("mytest.R")

# Rename the file
file.rename("mytest.R", "mytest2.R")

# Copy the file
file.copy("mytest2.R", "mytest3.R")

# View the relative path
file.path("mytest3.R")

# Create nested directories
dir.create(file.path("testdir2", "testdir3"), recursive = TRUE)

# Return to the original directory
setwd(old.dir)

# Delete the test directory (if needed)
unlink("testdir", recursive = TRUE)
