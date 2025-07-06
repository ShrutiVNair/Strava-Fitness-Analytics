# Strava Fitness Analytics Case Study

## Overview

This project analyzes user activity, sleep, and health data from Strava (or similar fitness tracking platforms) to uncover actionable insights for enhancing user engagement, retention, and overall app performance. The case study demonstrates a complete data analytics workflow spanning **Python EDA**, **SQL analysis**, and **Power BI visualization**, as would be done in a real-world analytics/data science environment.

---

## Table of Contents

- [Overview](#overview)
- [Project Purpose](#project-purpose)
- [Project Structure](#project-structure)
- [Datasets](#datasets)
- [Analysis Workflow](#analysis-workflow)
    - [1. Python: Data Cleaning & EDA](#1-python-data-cleaning--eda)
    - [2. SQL Analysis](#2-sql-analysis)
    - [3. Power BI Dashboard](#3-power-bi-dashboard)
- [Key Insights](#key-insights)
- [Tools & Technologies](#tools--technologies)
- [Get Involved](#get-involved)

---

## Project Purpose

The global fitness app market is competitive and rapidly evolving. To stay ahead, Strava must deeply understand its users:  
- **How do users engage with the app?**
- **What factors drive retention and loyalty?**
- **When are users most active?**
- **How can the product and marketing strategies be improved using data?**

This project answers these questions with real data analytics, enabling Strava (or any fitness tech company) to make **data-driven decisions** for feature development, marketing, and user engagement.

---

## Project Structure
```
Strava-Fitness-Analytics/
├── datasets/   # All cleaned raw data files (CSV, Excel) used for analysis
├── python/     # Jupyter notebooks and Python scripts for EDA, cleaning, modeling
├── sql/        # SQL scripts for querying and deeper analysis
├── powerbi/    # Power BI dashboard files and visualizations screenshots
└── README.md   # Project overview and documentation
```
---

## Datasets

Data comes from fitness tracker logs, including:

- **dailyActivity_merged.csv**: Daily steps, calories, distances, active/sedentary minutes
- **dailyCalories_merged.csv**: Daily calories burned
- **dailyIntensities_merged.csv**: Minutes by activity intensity
- **dailySteps_merged.csv**: Steps per user per day
- **sleepDay_merged.csv**: Sleep duration and quality per night
- **weightLogInfo_merged.csv**: User weights and BMI
- **hourly & minute files**: Granular, time-stamped activity, calories, intensities, and heartrate
- See `/datasets/` for all files

**Note:** Large files are managed via Git LFS.

---

## Analysis Workflow

### 1. Python: Data Cleaning & EDA

- **Loaded and cleaned all datasets using Pandas**
    - Standardized date columns
    - Removed duplicates, handled missing values and outliers
    - Merged/joined tables for richer analysis
- **Exploratory Data Analysis (EDA)**
    - Activity patterns: steps, calories, sleep, intensity, by day and hour
    - User segmentation by average daily steps
    - Sedentary vs. active minute breakdowns
    - Correlations (steps vs. calories, steps vs. sleep)
    - Retention & engagement trends

**Purpose:**  
To uncover meaningful trends, spot user segments, and set the foundation for deeper SQL/BI analysis.

---

### 2. SQL Analysis

- Designed a relational schema for Strava data
- Wrote queries to:
    - Retrieve most active users
    - Calculate average duration/intensity per activity
    - Find users with declining engagement
    - Segment users by frequency and activity type

**Purpose:**  
To answer specific business questions and enable scalable querying for future analytics needs.

---

### 3. Power BI Dashboard

- Developed interactive dashboards visualizing:
    - Activity trends and peak periods
    - Geographic and route data (if available)
    - Key KPIs: steps, calories, active minutes, retention
    - User segments and behavioral insights

**Purpose:**  
To enable business users to explore insights visually and make data-driven decisions.

---

## Key Insights

- **Peak activity occurs in the evenings (5–7 PM)**; lowest on Sundays
- **Most users are lightly or moderately active**, with 5k–10k steps/day being the norm
- **Sedentary minutes outnumber active minutes**, highlighting an opportunity for movement nudges
- **High retention:** Median user logs activity almost every day
- **Calories burned and steps are strongly correlated (corr ≈ 0.57)**
- **No strong link between activity and sleep duration**

**See `python/` and `powerbi/` folders for full notebooks and dashboards.**

---

## Tools & Technologies

- **Python** (with pandas, numpy, matplotlib, seaborn, scikit-learn):  
  For data cleaning, exploratory analysis, visualization, and feature engineering.

- **SQL** (PostgreSQL):  
  For data querying, relational modeling, aggregation, and business insights.

- **Power BI**:  
  For interactive dashboards, visual storytelling, and presenting business KPIs.

- **Git LFS (Large File Storage)**:  
  For managing and versioning large datasets efficiently.

- **Jupyter Notebook**:  
  For combining code, results, and narrative in reproducible data science workflows.


---
## Get Involved

This project is open to feedback, contributions, and further exploration!  
If you have suggestions for additional analyses, new data sources, or want to collaborate, please open an issue or submit a pull request.

---

*Thank you for exploring the Strava Fitness Analytics Case Study. Let's unlock the future of fitness, one dataset at a time!*
