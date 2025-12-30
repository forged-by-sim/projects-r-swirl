🧮 R Programming

Platform: Coursera
Institution: Johns Hopkins University
Instructors: Roger D. Peng, Jeff Leek, Brian Caffo
Tools Used: R, RStudio, swirl, Base R graphics, command line, Git/GitHub (for versioned assignments)

⸻

🎯 Course Objective

This course introduced the core ideas of programming in R for data analysis and reproducible research. Key goals:

Build comfort writing and running R scripts in RStudio

Understand R data types and data structures (vectors, matrices, lists, data frames, factors)

Write reusable functions and use control structures effectively

Work with simulation, random numbers, and basic visualization

Diagnose performance issues using the R profiler

Apply these skills to real datasets in progressively more complex programming assignments

⸻

🧩 Course Modules Overview
📦 Module 1: Background, Getting Started, and Nuts & Bolts (Professional Summary)

Installed and configured R + RStudio, then explored the basic building blocks of the language.
Covered:

R console vs. scripts, working directory, and workspace management

Core objects and data structures: vectors, lists, matrices, factors, data frames

Subsetting operations and handling missing values (NA)

Reading tabular data and understanding object structure

Practice was reinforced through swirl Lessons 1–7, plus a Week 1 quiz.
📁 Folder: module1-background-getting-started-nuts-and-bolts/

🧮 Module 2: Programming with R (Professional Summary)

Shifted from basics into real program design, using control flow and functions.
Covered:

Control structures: if, for, while, repeat, next, break

Writing user-defined functions and understanding arguments/return values

Lexical scoping concepts and good coding standards

Dates and times in R

Hands-on work included swirl Part 2 lessons (Logic, Functions, Dates & Times) and Programming Assignment 1 – Air Pollution, which introduced a small toolkit of functions (pollutantmean(), complete(), corr()) to analyze air quality monitor data.
📁 Folder: module2-programming-in-r/ → air_pollution/

🔁 Module 3: Loop Functions and Debugging (Professional Summary)

Focused on writing cleaner, more efficient code and learning how to debug it.
Covered:

The *apply family: lapply(), sapply(), vapply(), tapply(), mapply(), and split()

Strategies for replacing explicit loops with higher-level abstractions

Debugging tools: traceback(), debug(), browser(), recover()

Practical use of lexical scoping and closures

Practice included swirl Part 3 lessons (lapply/sapply, vapply/tapply) and Programming Assignment 2 – Lexical Scoping, which implemented a cached matrix inverse via makeCacheMatrix() and cacheSolve().

The graded implementation for this assignment lives in a dedicated forked repo:
👉 ProgrammingAssignment2 (forged-by-sim)

📁 Folder: module3-loop-functions-and-debugging/ → caching_matrix_inverse/ (local documentation and pointer to the repo)

🧪 Module 4: Simulation & Profiling (Professional Summary)

Served as the course capstone, combining simulation, graphics, and performance profiling.
Covered:

Using str() and related tools to inspect complex R objects

Generating random numbers and running simulations (linear models, random sampling)

Visualizing distributions with base R graphics (histograms and related plots)

Using the R profiler to identify time-consuming parts of functions

Practice included swirl Part 4 lessons (Looking at Data, Simulation, Base Graphics) and Programming Assignment 3 – Hospital Quality, which analyzed U.S. hospital outcome data and implemented functions (best(), rankhospital(), rankall()) to compare 30-day mortality rates across states.
📁 Folder: module4-simulation-and-profiling/ → hospital_quality/

⸻

📂 Folder Structure

course-r-swirl/
├── module1-background-getting-started-nuts-and-bolts/
│   ├── swirl_lesson00/ ... swirl_lesson07/
│   ├── week_1_quiz/
│   └── module_1_notes.txt
├── module2-programming-in-r/
│   ├── swirl_lesson08/ swirl_lesson09/ swirl_lesson14/
│   ├── week_2_quiz/
│   └── air_pollution/
├── module3-loop-functions-and-debugging/
│   ├── swirl_lesson10/ swirl_lesson11/
│   ├── week_3_quiz/
│   └── caching_matrix_inverse/   ← links to `ProgrammingAssignment2` repo
├── module4-simulation-and-profiling/
│   ├── swirl_lesson12/ swirl_lesson13/ swirl_lesson15/
│   ├── week_4_quiz/
│   └── hospital_quality/


Each module folder includes:

Completed swirl lesson artifacts (scripts + screenshots)

Week quiz references and notes (module_X_notes.txt)

Programming assignment code, step-by-step breakdowns, and output screenshots where relevant

⸻

🧠 Final Reflection

This course transformed R from a tool I had “seen around” into a language I can use confidently for real analysis work. Across four modules, I learned how to:

Structure data in R, write reusable functions, and replace loops with expressive *apply patterns

Debug systematically instead of guessing at errors

Run simulations and profile code to understand both behavior and performance

Build small, focused analysis toolkits for air pollution monitoring and hospital outcome evaluation

As a simulation technologist moving deeper into technical development, R now fits naturally into my workflow. I can:

Explore and clean datasets from simulation logs or XR experiments

Prototype analyses that measure training effectiveness and system performance

Document everything in a reproducible, Git-tracked way that future collaborators (or employers) can follow.

R Programming doesn’t sit in isolation—it reinforces the same structured, analytical thinking I use across SQL, Python, MATLAB, C/C++, and XR work, giving me another solid tool in my simulation engineering toolkit.