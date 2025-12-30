📈 Module 1: Background, Getting Started, and Nuts & Bolts

Course: R Programming
Platform: Coursera – Johns Hopkins University
Module Folder: module1-background-getting-started-nuts-and-bolts/

⸻

🎯 Objective

This module introduced the core R programming environment and basic language mechanics. The goals were to:

Install and configure R and RStudio

Learn how to run code from the console and from script files

Understand fundamental R data types and data structures

Practice subsetting, handling missing values, and basic vectorized operations

Reinforce concepts through interactive swirl lessons

⸻

🧠 What I Learned
R Environment & Workflow

Difference between R and RStudio, and how they work together

How to set a working directory, create and save .R scripts, and manage the workspace

Using the R console vs. scripts for reproducible work

Core Data Structures

Basics of R objects: vectors, lists, matrices, factors, and data frames

How attributes like names help label and organize data

Working with missing values (NA) and understanding how they affect calculations

Reading & Subsetting Data

Reading in tabular data and handling large tables

Introduction to textual data formats and connections to external files

Subsetting techniques for vectors, matrices, lists, and data frames

Using logical indexing and partial matching carefully

Vectorized Thinking

How mathematical and logical operations naturally extend over entire vectors

Why vectorization leads to concise, expressive code in R

⸻

🧪 Assignment & Practice Breakdown
📚 Week 1 Quiz

Concept check on:

R data types and data structures

Basics of subsetting and vector operations

Reading data and understanding how R stores objects

Result: Week 1 Quiz – 100%

💻 Practical R Exercises in swirl – Part 1

Each swirl lesson has its own folder in:

module1-background-getting-started-nuts-and-bolts/

swirl_lesson00 – R Console & Orientation

Confirmed R + RStudio setup

Practiced running expressions and viewing output in the console

swirl_lesson01 – Basic Building Blocks

Created numeric, character, and logical objects

Used basic arithmetic and assignment operators

swirl_lesson02 – Workspace and Files

Listed objects in the workspace

Saved and removed objects

Practiced working with directories and files from R

swirl_lesson03 – Sequences of Numbers

Generated sequences using : and seq()

Used rep() to repeat values and patterns

swirl_lesson04 – Vectors

Built and combined vectors

Checked types and lengths

Performed element-wise arithmetic

swirl_lesson05 – Missing Values

Identified NA values

Used is.na() and na.rm = TRUE in functions like sum() and mean()

swirl_lesson06 – Subsetting Vectors

Extracted elements by position, logical condition, and negative indices

Practiced careful indexing to avoid off-by-one errors

swirl_lesson07 – Matrices and Data Frames

Constructed matrices from vectors

Created and inspected data frames

Accessed rows, columns, and individual cells with [ ], $, and [[ ]]

⸻

📁 Key Files & Structure

Within module1-background-getting-started-nuts-and-bolts/:

swirl_lesson00/ – Orientation screenshots and R console setup

swirl_lesson01/–swirl_lesson07/

Each folder contains:

An .R script with the completed swirl code

One or more .png screenshots capturing console output and lesson completion

week_1_quiz/

Quiz notes and/or screenshots of the final score and answers

module_1_notes.txt

Personal notes summarizing key ideas, gotchas, and reminders from videos + swirl

(If you’ve added more scripts or renamed files, you can update this section to match exactly.)

⸻

🧠 Reflection

This module served as a re-introduction to R and a calibration point for my data science workflow. The swirl lessons were especially helpful because they forced me to interact with the language directly, not just passively watch videos.

I came away with a clear mental model of:

How R stores data in different structures

How to peel out exactly the elements I need using subsetting

How vectorization simplifies calculations that would be loop-heavy in other languages

As a simulation technologist, these foundations are critical. The same tools I practiced here—reading tabular data, cleaning missing values, and subsetting by condition—can be applied to:

Simulation log files

Performance metrics from XR training scenarios

Small analytical scripts to explore trends in learner outcomes

Module 1 laid the groundwork for using R as a practical analysis tool in my simulation and XR projects, not just as an academic language.