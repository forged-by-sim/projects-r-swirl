🧮 Module 2: Programming with R

Course: R Programming
Platform: Coursera – Johns Hopkins University
Module Folder: module2-programming-in-r/

⸻

🎯 Objective

This module moved from basic R mechanics into actual program design. The goals were to:

Learn and apply core control structures (if, for, while, repeat, next, break)

Write and test user-defined functions

Understand scoping rules and how R finds objects

Work with dates and times in R

Complete the first full programming assignment, Air Pollution, using real-world monitoring data

⸻

🧠 What I Learned
Control Structures & Logic

Structured decision making with if / if-else

Iteration patterns using for and while loops

When to use repeat, next, and break for more flexible control flow

Translating logical expressions into clean branching logic

Functions & Scoping

Building reusable functions with clear arguments and return values

Distinguishing between local and global variables

Understanding lexical scoping and how R resolves symbol names

Writing functions that are readable, testable, and easy to debug

Coding Standards

Reasonable naming conventions for objects and functions

Structuring scripts into logical sections (setup, functions, main execution)

Adding comments that explain why, not just what, the code is doing

Dates and Times

Creating and manipulating date/time objects

Converting character data into dates with parsing functions

Recognizing the importance of date handling for time-series analysis

⸻

🧪 Practice & Assessments
💻 Practical R Exercises in swirl – Part 2

Each swirl lesson is contained in its own folder under module2-programming-in-r/:

swirl_lesson08/ – Logic

Practiced logical operators (<, >, ==, !=, &, |)

Used logical conditions to drive control structures

swirl_lesson09/ – Functions

Wrote simple functions with arguments and return values

Reinforced the idea of encapsulating repeated logic into functions

swirl_lesson14/ – Dates and Times

Created, converted, and inspected date/time objects

Worked through examples involving time-based computations

📚 Week 2 Quiz

Checked understanding of:

Control structures and correct syntax

Function arguments, return values, and scoping

Basic date/time operations

Result: Week 2 Quiz – 100%

⸻

🌫️ Programming Assignment 1 – Air Pollution

Folder: module2-programming-in-r/air_pollution/

This assignment used real air pollution monitoring data stored as 332 CSV files in the specdata/ folder. The task was to write a small R analysis toolkit consisting of three core functions:

Core Functions

pollutantmean()

Reads all relevant files in specdata/

Computes the mean of a chosen pollutant ("sulfate" or "nitrate") while handling missing data

complete()

Counts the number of complete cases (no missing values) for each monitor

Returns a data frame of monitor IDs and their corresponding observation counts

corr()

Calculates the correlation between sulfate and nitrate levels

Filters monitors by a minimum threshold of complete observations before computing correlations

📁 Key Files

specdata/ – Folder containing all CSV files for the monitors

pollutantmean.R – Implementation of the pollutant mean function

complete.R – Implementation of complete-case counts

corr.R – Implementation of correlation calculations

pollutantmean-demo.html_.pdf – Knit demo showing pollutantmean() in action

complete-demo.html_.pdf – Knit demo showing complete() in action

corr-demo.html_.pdf – Knit demo showing corr() in action

📝 Support Files & Documentation

Assignment_1_Breakdown.txt – Step-by-step logic and design notes for each function

Workflow_1_GuideSheet.txt – Personal workflow guide for running and testing the assignment

programming_assignment_1_quiz.txt – Saved answers from the associated assignment quiz

answers_to_complete.png

answers_to_corr.png

answers_to_pollutantmean.png – Screenshots confirming correct outputs against the grader

⸻

🧠 Reflection

Module 2 was where R started to feel like a full programming language, not just a calculator.

Designing the Air Pollution assignment functions forced me to:

Think about data ingestion, cleaning, and analysis as a pipeline

Separate concerns into distinct functions and test each piece independently

Use control structures and logical conditions to handle edge cases and missing data

Document my process so I (or someone else) can understand and re-run the analysis later

From a simulation and XR perspective, this pattern generalizes well. The same structure—
read → validate → compute → summarize—could be applied to:

Performance logs from simulation training sessions

Sensor output from manikins or XR hardware

Time-stamped event data during complex training scenarios

Module 2 gave me practical experience turning raw, messy files into clean, functional R tools that can be reused and extended in larger analytics workflows.