# 🏥 Hospital Quality Project  
**Project Type**: Healthcare Data Profiling & Function Design  
**Folder**: `hospital-quality-project`  

⸻

## 🎯 Objective  
Analyze U.S. hospital performance using 30-day mortality data.  
This project applies R fundamentals—data loading, profiling, visualization, and modular function design—to generate insights from a real-world healthcare dataset.

⸻

## 🧠 Key Skills Demonstrated

- Reading and structuring multi-column `.csv` datasets  
- Converting character data to numeric for statistical analysis  
- Creating reusable R functions: `best()`, `rankhospital()`, `rankall()`  
- Building histograms using `hist()` to visualize mortality trends  
- File structuring and clean repo documentation  

⸻

## 📂 Folder Overview

```plaintext
hospital-quality-project/
├── hospital_quality_data/
│   ├── hospital-data.csv
│   ├── outcome-of-care-measures.csv
│   └── Hospital_Revised_Flatfiles.pdf
├── best.R                      # Finds best hospital by state and outcome
├── rankhospital.R              # Ranks hospitals based on outcome
├── rankall.R                   # Applies rankings across all states
├── histogram_heart_attack_rates.R  # Data conversion and histogram
├── histogram_with_code.png     # Output visualization
├── solutions_to_best.png       # Function output screenshot
├── solutions_to_rankhospital.png
├── solutions_to_rankall.png


⸻


📊 Insights Visualized

The script histogram_heart_attack_rates.R converts character data into numeric values and plots the distribution of 30-day heart attack mortality rates across U.S. hospitals.

📎 Output shown in histogram_with_code.png


⸻


✍️ Reflection

This project gave me a deeper understanding of how to clean and transform real datasets, organize scripts for readability, and develop insights from healthcare performance metrics using base R.


⸻






⸻