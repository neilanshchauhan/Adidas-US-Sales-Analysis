# Adidas US Sales Analysis 🏷️📊

This project analyzes Adidas's sales data in the United States, utilizing Python, SQL, and Power BI to extract actionable insights and predict sales.  

---

## Table of Contents 📑

- [Project Overview](#project-overview)  
- [Data Description](#data-description)  
- [Methodology](#methodology)  
  - [Data Analysis](#data-analysis)  
  - [Sales Prediction Model](#sales-prediction-model)  
  - [Data Visualization](#data-visualization)  
- [Results](#results)  
- [Files in Repository](#files-in-repository)  
- [How to Use](#how-to-use)  
- [Conclusion](#conclusion)  
- [References](#references)  

---

## Project Overview 🎯

The objective of this project is to analyze Adidas's US sales data to identify key trends, predict sales, and provide visual insights to support data-driven decision-making.  

---

## Data Description 🗂️

The dataset includes the following columns:  

- **Retailer**: Name of the retailer selling Adidas products. 🛍️  
- **Retailer ID**: Unique identifier for each retailer. 🆔  
- **Invoice Date**: Date of the sales transaction. 📅  
- **Region**: Geographical area of the sales activity. 🌎  
- **State**: Specific state where the sale occurred. 📍  
- **City**: City of the retailer. 🏙️  
- **Product**: Name of the Adidas product sold. 👟  
- **Price per Unit**: Selling price per unit of the product. 💵  
- **Units Sold**: Number of units sold. 📦  
- **Total Sales**: Total revenue from the sale. 💰  
- **Operating Profit**: Profit earned from the sale. 📈  
- **Operating Margin**: Percentage of revenue that remains as profit after covering operating costs. 📉
- **Sales Method**: The approach or channel through which the sale was conducted (e.g., Online, In-store). 🛒

---

## Methodology 🔍

### Data Analysis 📊

- **Tools Used**: SQL, Pandas  
- **Process**:  
  - Data cleaning and preprocessing to handle missing values and duplicates. 🧹  
  - Exploratory data analysis to understand sales distribution across regions, products, and time periods. 📊  
  - Identification of key factors influencing sales performance. 📌  

### Sales Prediction Model 🤖

- **Model Used**: Stacked Regression Model (LGBM + XGB)  
- **Process**:  
  - Applied Power Transformer on the data. ⚡  
  - Tested various models on the data. 🧪  
  - Achieved an R² score of 0.99, indicating high performance in sales prediction. ✅  
  - Created Unified Pipeline to implement all preprocessing, model training, and prediction steps in a single pipeline for efficient and consistent handling of data transformations and predictions. 🚀  

### Data Visualization 📈

- **Tool Used**: Power BI  
- **Process**:  
  - Created interactive dashboards to visualize sales trends, regional performance, and product-wise analysis. 🖥️  
  - Enabled stakeholders to interact with data for informed decision-making. 🧠  

---

## Results 🏆

- **Data Analysis**:  
  - Identified top-performing products and regions. ⭐  
  - Recognized sales patterns over different time periods. 📅  
- **Sales Prediction**:  
  - Developed a highly accurate model for predicting sales. 🔮  
- **Data Visualization**:  
  - Provided clear visual insights into sales performance, aiding strategic planning. 📊  

---

## Files in Repository 📂

- `Adidas Sales Analysis.sql`: SQL queries used for data analysis.  
- `adidas-us-sales-analysis.ipynb`: Jupyter Notebook containing Python code for data analysis and model building.  
- `Adidas US Sales Analysis.pbix`: Power BI dashboard file.  
- `Adidas.csv`: Dataset used for analysis.  
- `Adidas US Sales Analysis.pdf`: Report summarizing the analysis and findings.  

---

## How to Use 🛠️

1. **Data Analysis**:  
   - Run the SQL queries in `Adidas Sales Analysis.sql` using a SQL-compatible database.  
   - Execute the Jupyter Notebook `adidas-us-sales-analysis.ipynb` to perform data analysis and build the prediction model.  
2. **Data Visualization**:  
   - Open `Adidas US Sales Analysis.pbix` in Power BI to interact with the dashboard.  
3. **Dataset**:  
   - The dataset `Adidas.csv` is provided for reference and further analysis.  

---

## Conclusion ✅

This project provides a comprehensive analysis of Adidas's US sales data, offering valuable insights through data analysis, predictive modeling, and visualization. The findings can assist in strategic decision-making to enhance sales performance.  

---

## References 🔗

- [Adidas Sales Dataset on Kaggle](https://www.kaggle.com/datasets/heemalichaudhari/adidas-sales-dataset)
