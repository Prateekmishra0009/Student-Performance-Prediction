# Student Performance Prediction & Learning Analytics Platform

A data analytics and machine learning project designed to analyze student academic performance, identify learning-related patterns, analyze at-risk students, and predict final student performance.

---

## 📌 Project Overview

The **Student Performance Prediction & Learning Analytics Platform** is an end-to-end data analytics project built using Excel, Python, MySQL, and Power BI.

The project analyzes student academic, behavioral, family, and learning-related factors and studies their relationship with the final grade (`G3`).

The project also uses machine learning models to predict final student performance and provides an interactive Power BI dashboard for visualization and analysis.

### Project Workflow

**Dataset → Data Cleaning → Excel EDA → Python EDA → SQL Analysis → Machine Learning → Power BI Dashboard → Insights**

---

## 🎯 Objectives

- Clean and prepare the student performance dataset.
- Analyze academic performance using Excel and Python.
- Study the relationship between learning factors and final grades.
- Analyze study time, failures, absences, family support, school support, and other factors.
- Identify students with final grade below 10 as an analytical at-risk group.
- Store and analyze the dataset using MySQL.
- Build machine learning models to predict final grade (`G3`).
- Compare machine learning model performance.
- Create an interactive Power BI dashboard.
- Present the complete analysis in a structured project repository.

---

## 📊 Dataset

The project uses the **Student Performance Data** dataset obtained from Kaggle.

### Dataset Information

- **Total Students:** 395
- **Total Features:** 33
- **Target Variable:** `G3`
- **Grade Scale:** 0–20

### Important Variables

| Variable | Description |
|---|---|
| `G1` | First period grade |
| `G2` | Second period grade |
| `G3` | Final grade |
| `studytime` | Weekly study time category |
| `failures` | Number of previous failures |
| `absences` | Number of school absences |
| `Medu` | Mother's education |
| `Fedu` | Father's education |
| `famsup` | Family educational support |
| `schoolsup` | Extra educational support from school |
| `internet` | Internet access at home |
| `school` | Student's school |
| `sex` | Student's gender |

---

## 🧹 Data Cleaning

Data cleaning was primarily performed using **Microsoft Excel**.

The following checks were performed:

- Missing value check
- Duplicate check
- Valid value/range checking
- Categorical consistency checking
- Data type checking
- Formatting review
- Final dataset validation

The cleaned dataset was preserved in Excel format along with PivotTables and analysis charts.

---

## 📈 Exploratory Data Analysis

Exploratory Data Analysis was performed using both **Excel** and **Python**.

### Excel Analysis

The following analyses were performed:

- Average G1, G2 and G3
- Minimum and maximum G3
- Average Final Grade by Study Time
- Average Final Grade by Previous Failures
- Absences vs Final Grade
- Average Final Grade by Gender
- Average Final Grade by Mother's Education
- Average Final Grade by Father's Education
- Average Final Grade by Internet Access
- Average Final Grade by School
- Average Final Grade by Family Support
- Average Final Grade by School Support
- Average Final Grade by Higher Education Aspiration

### Python Analysis

Python was used for:

- Dataset inspection
- Statistical summary
- Missing-value verification
- Duplicate verification
- Grade analysis
- Group-based analysis
- Correlation analysis
- Grade distribution
- Data visualization

Libraries used:

- Pandas
- NumPy
- Matplotlib
- Scikit-learn

---

## 🗄️ SQL Analysis

The dataset was imported into **MySQL** for database-based analysis.

### Database

```text
Database: student_performance
Table: student_data

SQL Analysis Included
Total number of students
Total number of columns
Average final grade
Study time vs final grade
Previous failures vs final grade
Absences analysis
Gender analysis
Internet access analysis
Mother's education analysis
Father's education analysis
Family support analysis
School support analysis
At-risk student identification
Top-performing students
School-level performance
Performance categories
🤖 Machine Learning

Two Linear Regression models were developed using Python.

Model 1 — With G1/G2

Model 1 uses previous academic grades (G1 and G2) along with the other available features to predict final grade (G3).

Model 2 — Without G1/G2

Model 2 excludes G1 and G2.

This model focuses more on:

Study habits
Absences
Previous failures
Family support
School support
Student characteristics
Other available factors
Data Preparation

Categorical variables were converted into numerical form using one-hot encoding.

The dataset was divided into:

80% Training Data
20% Testing Data

random_state = 42 was used for reproducibility.

📊 Model Evaluation

The models were evaluated using:

MAE — Mean Absolute Error
RMSE — Root Mean Squared Error
R² Score
Model	MAE	RMSE	R² Score
Model 1 - With G1/G2	1.6467	2.3784	0.7241
Model 2 - Without G1/G2	3.3953	4.1957	0.1415

Lower MAE and RMSE indicate lower prediction error, while a higher R² indicates that more variation in the target is explained by the model.

⚠️ At-Risk Student Analysis

For this project, students with:
G3 < 10
were treated as an analytical at-risk group.

Results
At-Risk Students: 130
Average G3 of At-Risk Students: 5.38
Average Previous Failures: 0.69

The Power BI dashboard provides further analysis of this group using:

Study Time
Previous Failures
School
Gender
Absences
Student-level details

The G3 < 10 threshold is a project-defined analytical rule and should not be interpreted as a formal educational diagnosis.

📊 Power BI Dashboard

The final Power BI dashboard contains four pages.

1. Overview

Contains:

Total Students
Average Final Grade
At-Risk Students
Maximum Final Grade
Average Final Grade by Study Time
Average Final Grade by Previous Failures
Absences vs Final Grade
2. Learning Analytics

Contains analysis of:

Study Time
Previous Failures
Internet Access
Family Support
School Support
Mother's Education
Father's Education
3. At-Risk Students Analysis

Contains:

At-Risk Student Count
Average G3 of At-Risk Students
Average Absences
Average Previous Failures
At-Risk Students by Study Time
At-Risk Students by Previous Failures
At-Risk Students by School
At-Risk Students by Gender
Absences vs Final Grade
At-Risk Student Details
School, Gender and Study Time slicers
4. ML Prediction

Contains:

Model 1 MAE
Model 1 RMSE
Model 1 R² Score
Model 2 MAE
Model 2 RMSE
Model 2 R² Score
MAE comparison
RMSE comparison
R² comparison
ML Model Performance Summary

| Tool             | Purpose                   |
| ---------------- | ------------------------- |
| Microsoft Excel  | Data cleaning and EDA     |
| Python           | EDA and Machine Learning  |
| Pandas           | Data manipulation         |
| NumPy            | Numerical operations      |
| Matplotlib       | Data visualization        |
| Scikit-learn     | Machine Learning          |
| MySQL            | Database and SQL analysis |
| Power BI         | Interactive dashboard     |
| VS Code          | Project development       |
| Jupyter Notebook | Python analysis           |


Project Structure--
Student-Performance-Prediction/
│
├── Dataset/
│   └── student-mat.csv
│
├── Excel/
│   └── Student_Performance_Analysis.xlsx
│
├── Python/
│   ├── Student_Performance_EDA.ipynb
│   ├── Student_Performance_ML.ipynb
│   └── student-mat.csv
│
├── SQL/
│   └── Student_Performance_Analysis.sql
│
├── PowerBI/
│   └── Student_Performance_Dashboard.pbix
│
├── Report/
│   └── Student_Performance_Project_Report.pdf
│
└── README.md


🔍 Key Findings

The project provides several descriptive insights into student performance.

Final grades vary across different study-time categories.
Previous failures are associated with differences in average final grades.
Absence patterns can be explored alongside final grades.
Family and school support variables provide additional dimensions for learning analytics.
Previous academic grades provide useful predictive information in the developed models.
Removing G1 and G2 results in a different prediction performance profile.
Power BI allows interactive exploration of student performance and the analytical at-risk group.

These findings describe patterns in the dataset and should not be interpreted as proof of causation.

⚠️ Limitations
The dataset contains 395 student records.
The machine-learning models are baseline Linear Regression models.
The project uses the variables available in the selected dataset.
Correlation and group-level differences do not establish causation.
The G3 < 10 at-risk threshold is defined specifically for this project.
Model performance may change with different datasets, features, preprocessing methods, or algorithms.
🚀 Future Scope

Future improvements could include:

Random Forest Regression
Gradient Boosting
XGBoost
Cross-validation
Hyperparameter tuning
Feature engineering
Model explainability
Automated Power BI data refresh
Larger and more recent datasets
Longitudinal student performance data
Deployment as a web-based analytics platform
📚 Dataset Source

The dataset used in this project was obtained from Kaggle:

Student Performance Data — Devans Odariya

The original Kaggle source should be retained as the dataset attribution for this project.

👨‍💻 Project Author

Prateek Mishra

B.Tech — Computer Science and Engineering

📌 Project Status

Completed:

Data Cleaning
Excel EDA
Python EDA
SQL Analysis
Machine Learning
Model Evaluation
Power BI Dashboard
Project Report