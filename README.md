# HR Absenteeism Analysis using SQL & Power BI

## 📌 Problem Statement
The HR team wanted to understand employee absenteeism patterns and identify healthy, low-absenteeism employees for incentive programs, while also estimating compensation adjustments for non-smokers within a fixed insurance budget.

## 📊 Dataset Description
- **Source:** HR internal datasets provided for analysis  
- **Datasets Used:** 3 relational tables (employee details, absenteeism records, compensation/health indicators)  
- **Rows:** ~700+ employee absenteeism records  
- **Columns:** Demographics, health factors (BMI, smoking status), absenteeism hours, compensation details  
- **Time Period:** Historical employee attendance data (year not explicitly specified)

## 🛠 Tools Used
- **SQL:** Database creation, joins, calculations, and business logic  
- **Power BI:** Data modeling, DAX measures, and interactive dashboard creation  
- **Excel:** Initial data inspection and validation  

## 🔍 Steps Performed
1. Created a SQL database and imported all three datasets.
2. Used `LEFT JOIN` to combine employee, absenteeism, and health-related data.
3. Wrote SQL queries to:
   - Identify healthy employees with low absenteeism.
   - Calculate potential wage increases for non-smokers within the insurance budget.
4. Optimized SQL queries for seamless integration with Power BI.
5. Connected SQL output to Power BI.
6. Built an HR-focused dashboard based on the provided wireframe.
7. Analyzed absenteeism trends by health, lifestyle, and demographic factors.
   
## 💡 Key Insights & Recommendations
- Non-smokers account for a significant portion of the workforce and can be rewarded without exceeding the allocated insurance budget.
- Employees with healthy BMI and low absenteeism are ideal candidates for bonus programs.
- Absenteeism trends vary noticeably across age groups and health indicators.
- Incentivizing healthier lifestyles may help reduce absenteeism-related productivity loss.
- HR leadership can use the dashboard to proactively monitor and manage attendance risks.

## 📈 Dashboard Preview
The Power BI dashboard provides:
- Absenteeism trends by employee demographics
- Health vs absenteeism comparisons
- Actionable insights for HR decision-making

## 📁 Repository Contents
- `Absenteeism query.sql` – SQL scripts used for analysis
- `Absenteeism_Dashboard.pbix` – Power BI dashboard file
- Project documentation and supporting files

## 🚀 Outcome
This project demonstrates end-to-end HR analytics: from database creation and SQL analysis to interactive Power BI reporting, supporting data-driven HR policy decisions.
