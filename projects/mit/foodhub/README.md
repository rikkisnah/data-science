# FoodHub — Data Analysis Project

## Problem Statement

FoodHub is a food aggregator company in New York that offers access to multiple restaurants through a smartphone app. The company wants to analyze order data to understand restaurant demand patterns and enhance customer experience. This project performs comprehensive exploratory data analysis to derive actionable business insights.

## Dataset

**Source:** FoodHub internal order data
**Records:** 1,898 food delivery orders
**Restaurants:** 178 unique restaurants
**Customers:** 1,200 unique customers

### Data Dictionary

| Column | Description |
|--------|-------------|
| order_id | Unique ID of the order |
| customer_id | ID of the customer |
| restaurant_name | Name of the restaurant |
| cuisine_type | Cuisine ordered (American, Japanese, Italian, etc.) |
| cost_of_the_order | Order cost in dollars |
| day_of_the_week | Weekday or Weekend indicator |
| rating | Customer rating (1-5 or "Not given") |
| food_preparation_time | Time in minutes for restaurant to prepare food |
| delivery_time | Time in minutes for delivery |

## Approach

1. **Data Understanding:** Examined structure, data types, and missing values
2. **Univariate Analysis:** Explored distributions of numerical and categorical variables
3. **Multivariate Analysis:** Investigated relationships between variables
4. **Business Metric Calculation:** Revenue analysis, delivery time metrics
5. **Recommendations:** Data-driven insights for business improvement

## Models / Techniques

- Descriptive statistics (mean, median, standard deviation)
- Data visualization (histograms, boxplots, bar charts, heatmaps)
- Correlation analysis
- Segmentation analysis by cuisine type and day of week
- Revenue modeling based on commission structure

## Results

### Key Findings

| Metric | Value |
|--------|-------|
| Weekend orders | 64% of total (1,218 orders) |
| Average order value | $16.50 |
| Premium orders (>$20) | 29.24% |
| Mean delivery time | 24.16 minutes |
| Mean total time | 51.53 minutes |
| Orders under 60 min | ~90% |
| Unrated orders | 39% |
| Net revenue | ~$6,166 |

### Top Restaurants
1. Shake Shack (219 orders, 11.5%)
2. The Meatball Shop (132 orders)
3. Blue Ribbon Sushi (119 orders)

### Cuisine Popularity
- American: 34% of orders
- Japanese: 28% of orders (highest rated at 4.35)
- Italian: 15% of orders

## Repository Structure

```
foodhub/
├── README.md
├── notebooks/
│   ├── 5 FDS_Project_LearnerNotebook_FullCode.ipynb
│   └── 5 FDS_Project_LearnerNotebook_LowCode.ipynb
├── data/
│   ├── raw/
│   │   └── 4 foodhub_order.csv
│   └── processed/
├── reports/
│   ├── 1 Project Details.pdf
│   ├── 2 Project Discussion.pdf
│   └── ... (reference materials)
├── outputs/
│   └── FDS_Project_FoodHub_Analysis.html
├── src/
└── final_submission/
    ├── README.md
    └── artifacts/
        ├── 5_FDS_Project_LearnerNotebook_FullCode.html
        └── 5_FDS_Project_LearnerNotebook_FullCode.ipynb
```

## Notes

- Primary analysis notebook: `notebooks/5 FDS_Project_LearnerNotebook_FullCode.ipynb`
- Dataset uses relative paths: `../data/raw/4 foodhub_order.csv`
- Part of MIT Applied Data Science program
- Analysis conducted using Python, pandas, matplotlib, seaborn
