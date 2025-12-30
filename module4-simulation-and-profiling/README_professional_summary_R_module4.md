🧪 Module 4: Simulation & Profiling

Course: R Programming
Platform: Coursera – Johns Hopkins University
Module Folder: module4-simulation-and-profiling/

⸻

🎯 Objective

This final module focused on simulating data in R and profiling code performance. The goals were to:

Use R’s random number generators to create simulated datasets

Build simple simulation-based experiments (e.g., linear models, resampling)

Understand and use the R profiler to find performance bottlenecks

Complete a capstone-style programming assignment on hospital quality and 30-day mortality rates

⸻

🧠 What I Learned
Exploring and Structuring Data

Using the str() function to quickly inspect the internal structure of R objects

Reading hospital outcome data and understanding how columns map to meaningful variables

Building intuition for when a dataset is “analysis ready” vs. when it needs cleaning or transformation

Simulation in R

Generating random numbers with functions like rnorm(), runif(), and related distributions

Simulating from a linear model to understand variability and sampling behavior

Using random sampling to approximate distributions and validate expectations

Controlling randomness with set.seed() for reproducible results

Profiling and Performance

Using the R profiler to record where time is being spent inside functions

Interpreting profiling output to identify expensive operations

Thinking about vectorization, data structures, and algorithm design when optimizing code

⸻

🧪 Practice & Assessments
💻 Practical R Exercises in swirl – Part 4

Each swirl lesson is stored in its own folder under module4-simulation-and-profiling/:

swirl_lesson12/ – Looking at Data

Practiced using str(), summaries, and plots to get a quick overview of data

swirl_lesson13/ – Simulation

Generated random samples from different distributions

Explored how sample size and randomness affect estimated means and variances

swirl_lesson15/ – Base Graphics

Created base R plots (histograms, scatterplots, etc.)

Adjusted labels and other basic graphics parameters for clearer communication

📚 Week 4 Quiz

Assessed:

Simulation concepts and random number generation

Interpretation of profiler output

Proper use of str() and related inspection tools

Result: Week 4 Quiz – 100%

⸻

🏥 Programming Assignment 3 – Hospital Quality

Folder: module4-simulation-and-profiling/hospital_quality/

This assignment used real U.S. hospital outcome data to analyze 30-day mortality rates for various conditions. The goal was to write a small R toolkit to rank hospitals by performance.

Core Functions

best.R

Implements a best() function that returns the single best hospital in a state for a specified outcome (e.g., heart attack mortality)

rankhospital.R

Implements rankhospital() to return the hospital at a given rank (e.g., "best", "worst", or a numeric rank) for a specific state and outcome

rankall.R

Implements rankall() to return a data frame of hospitals at a specified rank across all states

📁 Key Files in hospital_quality/

hospital_quality_data/ – Folder containing the cleaned outcome dataset used for all three functions

best.R, rankhospital.R, rankall.R – Final implementations submitted for grading

histogram_30days_heart_attacks.txt / histogram_30days_heart_attacks_mortality_ra*.R – Code and notes for generating histograms of 30-day mortality rates

histogram.png, histogram_with_code.png – Visualizations of the mortality rate distribution

ProgAssignment3.pdf – Assignment instructions (saved locally for reference)

programming_assignment_3_quiz.txt – Recorded answers for the associated quiz

answers_to_best.png, answers_to_rankall.png, answers_to_rankhospital.png – Screenshots confirming that outputs matched the autograder results

⸻

🧠 Reflection

Module 4 pulled together the entire course:

I used simulation to understand how random variation and sample size influence estimates—skills that translate directly to modeling noisy real-world systems.

The hospital quality assignment mirrored a realistic analytics task: load messy health data, clean it, implement ranking logic, and present clear summaries.

Profiling and visualization reinforced that correct code is only the first step; performance and interpretability matter just as much.

From a simulation/XR perspective, this module connects strongly to:

Running simulation studies to test training interventions or system behavior under different conditions

Profiling and optimizing analysis scripts that must run repeatedly on large logs

Building tools that help decision-makers quickly see which “sites” (hospitals, centers, training setups) are performing best and why.

Module 4 was a natural capstone: it combined simulation, profiling, visualization, and real healthcare data into one cohesive workflow, rounding out my R Programming toolkit.