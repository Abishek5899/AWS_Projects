# 📊 Visualizing Netflix Data using Amazon QuickSight

## Overview

This project demonstrates how to create interactive and insightful data visualizations using **Amazon QuickSight** by connecting to a CSV dataset stored in **Amazon S3**. The dataset contains metadata about **Netflix movies and TV shows**, including release year, type, and title.

The goal of this project is to practice serverless data visualization in AWS, gain insights from real-world datasets, and build a reusable framework for future analytics dashboards.

---

## 🚀 Project Highlights

- Data stored in **Amazon S3** and accessed securely
- Visualization powered by **Amazon QuickSight**
- Use of **filters**, **parameters**, and **calculated fields**
- Real-time analysis of TV Shows vs Movies by **release year**
- Dashboard contains a combination of **pie charts**, **bar graphs**, and **tabular reports**

---

## 🗂️ Dataset

- **Source:** Netflix Titles (public dataset)
- **Format:** CSV
- **Fields Used:** `title`, `type`, `release_year`, and other optional attributes

---

## 🏗️ Architecture
![image](https://github.com/user-attachments/assets/d3b96e61-85cb-4429-a432-a3b5de79a3d8)

---
## 🛠️ Setup Instructions

To recreate this project, follow these steps:

### 1. Upload CSV to S3
- Go to the **AWS S3 Console**
- Upload your `netflix_titles.csv` into a new bucket (e.g., `netflix-data-bucket`)

### 2. Grant Permissions
- Ensure **Amazon QuickSight** has permission to access the S3 bucket:
  - Manage access via **IAM roles** or **QuickSight data permissions** settings

### 3. Connect S3 to QuickSight
- In QuickSight, go to **New Dataset** > **S3**
- Provide either:
  - A **manifest file**, or  
  - A **direct S3 path** to the CSV file

### 4. Build Analysis
- Select the desired fields from the dataset
- Create visuals such as:
  - Bar charts
  - Donut charts
  - Tables
- Apply filters, calculated fields, and formatting as needed

### 5. Publish Dashboard
- Save your **analysis**
- Create and publish a **dashboard** for interactive viewing and sharing

---
## 🧠 Skills Gained

- **Amazon QuickSight**: Creating datasets, visualizations, filters, and dashboards  
- **S3 Integration**: Loading and managing structured data files from Amazon S3  
- **Data Filtering**: Using filters and parameters for interactive analysis  
- **Visualization Design**: Applying appropriate visual formats for categorical and time-series data  
- **IAM & Access Control**: Managing dataset access through AWS permissions  
- **Cloud-Based BI**: Delivering insights from data without provisioning infrastructure 
