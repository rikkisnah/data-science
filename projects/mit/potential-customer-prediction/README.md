# Potential Customers Prediction — ML Classification Project

## Problem Statement

ExtraaLearn is an early-stage EdTech startup offering upskilling and reskilling programs on cutting-edge technologies. The company generates a large volume of leads through digital marketing, website interactions, and email inquiries. The challenge is identifying which leads are most likely to convert to paying customers so sales and marketing resources can be focused effectively.

## Dataset

**Source:** ExtraaLearn lead data
**Records:** 4,612 leads
**Features:** 15 columns (1 ID, 4 numerical, 9 categorical, 1 binary target)
**Missing values:** None

### Data Dictionary

| Column | Description |
|--------|-------------|
| ID | Lead identifier |
| age | Age of the lead |
| current_occupation | Professional, Unemployed, or Student |
| first_interaction | Website or Mobile App |
| profile_completed | Low (0-50%), Medium (50-75%), High (75-100%) |
| website_visits | Number of website visits |
| time_spent_on_website | Total time spent on website |
| page_views_per_visit | Average pages viewed per visit |
| last_activity | Email Activity, Phone Activity, or Website Activity |
| print_media_type1 | Saw ad in Newspaper (Yes/No) |
| print_media_type2 | Saw ad in Magazine (Yes/No) |
| digital_media | Saw ad on digital platforms (Yes/No) |
| educational_channels | Heard via education channels (Yes/No) |
| referral | Heard via referral (Yes/No) |
| status | Converted to paid customer (1=Yes, 0=No) |

## Approach

1. **Exploratory Data Analysis:** Univariate and bivariate analysis of all features against conversion status
2. **Data Preprocessing:** Encoding categorical variables, train/test split
3. **Decision Tree:** Baseline model, hyperparameter tuning via GridSearchCV, feature importance
4. **Random Forest:** Baseline model, hyperparameter tuning via GridSearchCV, feature importance
5. **Insights & Recommendations:** Key conversion drivers and business recommendations

## Models / Techniques

- Decision Tree Classifier (baseline + tuned)
- Random Forest Classifier (baseline + tuned)
- GridSearchCV for hyperparameter optimization
- Classification metrics: accuracy, precision, recall, F1-score, ROC-AUC
- Feature importance analysis
- Data visualization (histograms, boxplots, bar charts, heatmaps, ROC curves)

## Results

| Metric | Decision Tree (Tuned) | Random Forest (Tuned) |
|--------|----------------------|----------------------|
| Accuracy | — | — |
| Precision (class 1) | — | — |
| Recall (class 1) | — | — |
| F1-score (class 1) | — | — |
| ROC-AUC | — | — |

*Results to be populated after final notebook run.*

## Repository Structure

```
potential-customer-prediction/
├── README.md
├── Makefile
├── project-understanding.md
├── notebooks/
│   └── potential-customers-prediction.ipynb
├── data/
│   ├── raw/
│   │   └── datasets.csv
│   └── processed/
├── reports/
│   ├── 1 - project-description.md
│   ├── 2 - low-code-vs-full-code.md
│   ├── 3 - problem-statement.md
│   ├── FAQ.pdf
│   └── report.docx
├── outputs/
├── src/
└── final_submission/
    └── artifacts/
```

## Quick Start

```bash
# Install dependencies (Jupyter + data science packages)
make install

# Launch Jupyter Notebook
make jupyter

# Export notebook to HTML (for submission)
make export-html
```

## Notes

- Primary analysis notebook: `notebooks/potential-customers-prediction.ipynb`
- Dataset uses relative paths: `../data/raw/datasets.csv`
- Part of MIT Applied Data Science program
- Analysis conducted using Python, pandas, matplotlib, seaborn, scikit-learn
