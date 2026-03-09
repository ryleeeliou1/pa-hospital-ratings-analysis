# Pennsylvania Hospital Quality Analysis 

This project analyzes hospital quality ratings across Pennsylvania using data from the Centers for Medicare & Medicaid Services (CMS). The goal of this analysis is to examine how hospital ratings vary by ownership type and geographic region within the state. 

This project demonstrates a full analytics workflow with data cleaning in Python, querying and aggregating in SQL, and visualization in Tableau. 

---

## Tools Used
- Python (pandas): Data cleaning
- SQL (MySQL): Data querying and aggregation
- Tableau: Data visualization and dashboard creation
- Git / Github: Version control and project documentation

---

## Dataset

Source: 
CMS Hospital General Information Dataset  
https://data.cms.gov/provider-data/dataset/xubh-q36u

This dataset contains information on the hospital characteristics and quality ratings, including: 

- Hospital name and location 
- Ownership type
- Emergency services availability
- Overall hospital quality rating (1-5 stars)

For this project, the dataset was filtered to include hospitals in **Pennsylvania**. 

---

## Project Workflow 

### 1. Data Cleaning (Python) 

The CMS dataset was cleaned and filtered using pandas: 

- Selected relevant hospital attributes 
- Filtered for Pennsylvania Hospitals
- Removed unnecessary columns
- Exported a cleaned .csv dataset for analysis

 Output:
 data_clean/pa_hospitals_clean.csv

 ---

 ### 2. Data Analysis (SQL) 

 The cleaned dataset was loaded into MySQL and analyzed using a series of SQL queries.

 Key queries included: 

 - Distribution of hospital ratings
 - Average hospital rating by county
 - Average hospital rating by ownership type
 - Ranking of hospitals within counties

---

### 3. Data Visualization (Tableau) 

An interactive Tableau dashboard was created to visualize the results. 

Dashboard components: 

- Distribution of hospital ratings across Pennsylvania
- Average hospital rating by county (Filtered to counties with 4+ hospitals)
- Average hospital rating by ownership type

---

## Dashboard

![Pennsylvania Hospital Dashboard] (Tableau_Dashboard)

### Key Insights

- Most hospitals in Pennsylvania are rated **3-4 stars**
- **Veterans Health Administration hospitals** show the highest average ratings
- Among counties with multiple hospitals, **Lancaster County and Bucks County** have the highest average hospital ratings

---

## Future Improvements/Extensions

Potential improvements/extensions of this project include: 

- Adding additional quality metrics
- Comparing hospital ratings across multiple states
- Incorporating detailed demographic or population health data
- Building an **interactive** Tableau dashboard
- Performing statistical analysis to test the differences in quality between hospital ownership

---
## Author 
Rylee Eliou 


