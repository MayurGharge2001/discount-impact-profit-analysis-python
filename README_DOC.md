
# OPTIMIZING DISCOUNTS FOR MAXIMUM PROFITABILITY

Analyze how discounts affect sales and profit to identify inefficient discounting, determine profit-loss thresholds, and recommend optimal discount strategies for maximizing profitability.

---

## Table of Contents
- <a href="#overview">Overview</a>
- <a href="#problem statements">Problem Statements</a>
- <a href="#dataset">Dataset</a>
- <a href="#tools--technologies">Tools & Technologies</a>
- <a href="#methods">Methods</a>
- <a href="#project-structure">Project Structure</a>
- <a href="#visules">Visules</a>
- <a href="#key insides">Key insides</a>
- <a href="#how-to-run-this-project">How to Run This Project</a>
- <a href="#key insides">Key insides</a>
- <a href="#results and Conclusion">results and Conclusion</a>
- <a href="#final-recommendations">Final Recommendations</a>
- <a href="#author--contact">Author & Contact</a>

---

<h2><a class="anchor" id="overview"></a>Overview</h2>

This project analyzes how discount levels influence sales and profitability across regions and product categories to uncover patterns of inefficient discounting and revenue leakage.
It identifies profit erosion thresholds and recommends optimal discount strategies that balance sales growth with maximum profitability.

---

<h2><a class="anchor" id="problem statements"></a>problem statements</h2>

* Analyze how different discount levels impact **sales and profitability** across regions and product categories.
* Identify situations where **high discounts do not lead to proportional increases in sales** (inefficient discounting).
* Determine the **discount thresholds at which profit starts declining or turning negative**.
* Examine regional and category-level patterns to find **areas of profit leakage due to discount strategies**.
* Develop **data-driven recommendations for optimal discount ranges** that maximize profit while maintaining sales performance.

---

<h2><a class="anchor" id="dataset"></a>Dataset</h2>

* Format: CSV file
* Size: 5000 rows × 15 columns
* Granularity: Each row represents a single order transaction

---

<h2><a class="anchor" id="tools--technologies"></a>Tools & Technologies</h2>

* Pandas
* Matplotlib
* Seaborn
* Statsmodels
* SciPy
* GitHub

---

<h2><a class="anchor" id="methods"></a> Methods </h2>

* Data Preprocessing
* Exploratory Data Analysis (EDA)
* Discount Bucketing
* Aggregation Analysis
* Correlation Analysis
* Statistical Testing
* Regression Modeling
* Trend Analysis
* Comparative Analysis
* Insight Generation

---

<h2><a class="anchor" id="project-structure"></a>Project Structure</h2>

```
project-root/
│
├── data/ # Raw dataset
│ └── dataset.csv
│
├── notebooks/ # Jupyter notebooks for analysis
│ └── analysis.ipynb
│
├── src/ # Source code (Python scripts)
│ ├── data_preprocessing.py
│ ├── eda.py
│ ├── analysis.py
│ └── modeling.py
│
├── reports/ # Outputs & reports
│ ├── figures/ # Visualizations (charts, plots)
│ └── final_report.pdf # Final project report
│
├── README.md # Project documentation
├── requirements.txt # Dependencies
└── .gitignore # Ignored files
```
---

<h2><a class="anchor" id="visuals"></a>Visuals</h2>

* Discount vs Profit
* Discount vs Sales
* Correlation Between Discount, Sales & Profit
* Profit Trend by Discount Across Categories
* Profit vs Discount Trend

![Discount vs Profit](Visules/Discount_vs_Profit.png)

![Discount vs Sales](reports/figures/Discount_vs_Sales.png)

![Correlation](reports/figures/Correlation.png)

![Profit Trend by Category](reports/figures/Profit_by_Category.png)

![Profit vs Discount](reports/figures/Profit_vs_Discoun.png)

---

<h2><a class="anchor" id="key insides"></a>Key insides</h2>

* High discounts do not always result in increased sales, indicating cases of **inefficient discounting**.
* There is a **negative relationship between discount and profit**, where excessive discounts reduce profitability.
* Certain regions rely heavily on discounts but generate **lower profit margins**, highlighting regional inefficiencies.
* Some product categories maintain strong sales with lower discounts, suggesting **better pricing power**.
* A specific discount range exists beyond which **profit starts to decline significantly** (profit erosion threshold).
* Optimal discount strategies can **balance sales growth and profitability**, avoiding unnecessary revenue loss.

---

<h2><a class="anchor" id="how-to-run-this-project"></a>How to Run This Project</h2>

1. Clone the Repository
git clone https://github.com/MayurGharge2001/discount-impact-profit-analysis-python.git
cd discount-impact-profit-analysis-python

2. Install Required Libraries
pip install pandas matplotlib seaborn statsmodels scipy notebook

3. Launch Jupyter Notebook
jupyter notebook

4. Open and Run Notebook
Open:
Data_Analysis_Python_Project_1.ipynb
Run all cells step-by-step

5. View Outputs
Visualizations → Check visuals generated in the notebook
Dataset → Located in the data/ folder
Final insights → Open Project_1.pdf

---

<h2><a class="anchor" id="results and conclusion"></a>Results and Conclusion</h2>

* Discounts show a negative impact on profit beyond certain levels
* High discounts do not always lead to increased sales, indicating inefficiencies
* Identified profit erosion threshold where margins start declining
* Some regions and categories exhibit ineffective discount strategies
* Moderate discounts achieve a better balance between sales and profit
* Data-driven discount optimization can improve overall profitability

<h2><a class="anchor" id="final-recommendations"></a>Final Recommendations</h2>

* Avoid high discount ranges where profit declines significantly
* Focus on optimal discount range that balances sales and profit
* Reduce discounts in regions with low return on sales increase
* Apply category-specific discount strategies instead of uniform pricing
* Monitor and control inefficient discounting patterns regularly
* Prioritize profit-driven decisions over volume-driven sales

---

<h2><a class="anchor" id="author--contact"></a>Author & Contact</h2>

**Mayur Gharge**  
Data Analyst  
📧 Email: ghargemayur24@gmail.com  
🔗 [LinkedIn](linkedin.com/in/mayur-gharge-b82804369)  
