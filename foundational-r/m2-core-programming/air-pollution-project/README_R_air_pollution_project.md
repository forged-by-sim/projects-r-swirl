# 🌫️ Air Pollution Analysis Project  
**Project Type**: Data Cleaning, Aggregation & Correlation Analysis  
**Folder**: `air-pollution-project`  

⸻

## 🎯 Objective  
Analyze air quality across multiple U.S. monitors by creating reusable R functions to calculate pollutant means, assess data completeness, and compute correlations between pollutants. This project practices file I/O, data wrangling, and batch processing logic in R.

⸻

## 🧠 Key Skills Demonstrated

- Reading multiple `.csv` files programmatically  
- Writing custom functions for numeric aggregation and conditional filtering  
- Handling missing values with `complete.cases()`  
- Visualizing output verification with screenshots  
- Structuring functional workflows for reproducible results  

⸻

## 📂 Folder Structure

```plaintext
air-pollution-project/
├── specdata/                      # Raw data directory (monitor CSV files)
├── pollutantmean.R               # Calculates mean of a pollutant across monitors
├── complete.R                    # Counts complete observations per monitor
├── corr.R                        # Computes correlation between sulfate & nitrate
├── solutions_to_pollutantmean.png
├── solutions_to_complete.png
├── solutions_to_corr.png
├── workflow_1_guidesheet.txt     # Pseudocode + planning notes


Note: PDFs such as *-demo.html_.pdf were retained as optional walkthroughs for future reference.


⸻


🧪 Functions Overview
pollutantmean(directory, pollutant, id = 1:332)

Computes the mean pollutant value ("sulfate" or "nitrate") across specified monitor IDs.

complete(directory, id = 1:332)

Returns a data frame with monitor IDs and number of complete cases per file.

corr(directory, threshold = 0)

Calculates correlations between "sulfate" and "nitrate" for monitors meeting the completeness threshold.


⸻


✍️ Reflection

This project strengthened my ability to read, loop through, and analyze multiple datasets at scale. I learned to write modular, testable R functions that simulate data-processing pipelines used in environmental health or scientific monitoring fields. Each script was validated with screenshots to confirm accuracy across edge cases.


⸻





⸻