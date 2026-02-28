# Potential Customers Prediction - Project Understanding

## 1. Business Context

The EdTech industry is booming - the online education market was forecast to reach **$286.62 billion by 2023** with a 10.26% CAGR. Companies in this space generate large volumes of leads through digital marketing, website interactions, and email inquiries. The challenge is identifying which leads will actually convert to paying customers so sales and marketing resources can be focused where they matter most.

**ExtraaLearn** is an early-stage EdTech startup offering upskilling/reskilling programs on cutting-edge technologies. They need a data-driven approach to lead prioritization.

## 2. Objective

Build a machine learning solution (full-code, Decision Tree and Random Forest) to:

1. **Predict** which leads are most likely to convert to paid customers
2. **Identify the key factors** that drive lead conversion
3. **Create a profile** of high-conversion leads for the business team

## 3. Dataset Overview

- **File**: `datasets.csv`
- **Records**: 4,612 leads
- **Features**: 15 columns (1 ID, 4 numerical, 9 categorical, 1 binary target)
- **Missing values**: None - the dataset is clean
- **Target variable**: `status` (1 = converted, 0 = not converted)

### Target Distribution

| Status | Count | Percentage |
|--------|-------|------------|
| Not converted (0) | 3,235 | 70.1% |
| Converted (1) | 1,377 | 29.9% |

The dataset has a ~70/30 class split. Per the project FAQ, class imbalance handling (e.g., class weights) is only needed when imbalance exceeds 70%. This is borderline, so we may assign higher weight to class 1 since that's the class of interest.

### Feature Summary

#### Numerical Features

| Feature | Min | Max | Mean | Median | Std Dev |
|---------|-----|-----|------|--------|---------|
| age | 18 | 63 | 46.2 | 51.0 | 13.2 |
| website_visits | 0 | 30 | 3.6 | 3.0 | 2.8 |
| time_spent_on_website | 0 | 2,537 | 724.0 | 376.0 | 743.8 |
| page_views_per_visit | 0.0 | 18.4 | 3.0 | 2.8 | 2.0 |

Key observations:
- **age** is left-skewed (median 51 > mean 46), range 18-63
- **time_spent_on_website** is right-skewed (median 376 << mean 724), high variance
- **website_visits** has potential outliers (max 30 vs mean 3.6)
- **page_views_per_visit** also has potential outliers (max 18.4 vs mean 3.0)

#### Categorical Features

| Feature | Values | Distribution |
|---------|--------|-------------|
| current_occupation | Professional (2,616), Unemployed (1,441), Student (555) | Professionals dominate |
| first_interaction | Website (2,542), Mobile App (2,070) | Fairly balanced |
| profile_completed | High (2,264), Medium (2,241), Low (107) | Very few Low |
| last_activity | Email (2,278), Phone (1,234), Website (1,100) | Email most common |

#### Binary Flag Features (Yes/No)

| Feature | Yes Count | Yes % |
|---------|-----------|-------|
| print_media_type1 (Newspaper) | 497 | 10.8% |
| print_media_type2 (Magazine) | 233 | 5.1% |
| digital_media | 527 | 11.4% |
| educational_channels | 705 | 15.3% |
| referral | 93 | 2.0% |

Most leads do **not** come through advertising channels - organic/direct paths dominate.

## 4. Key EDA Questions to Answer

These are specified in the learner notebook:

1. **Occupation vs. conversion**: How does current occupation affect lead status?
2. **First interaction impact**: Do first channels of interaction (Website vs Mobile App) affect conversion?
3. **Best interaction mode**: Which last_activity type (Email/Phone/Website) works best for conversion?
4. **Channel effectiveness**: Which lead source channel (print, digital, referral, educational) has the highest conversion rate?
5. **Profile completeness**: Does having a more complete profile increase conversion chances?

## 5. Approach (Full-Code)

### Step 1: Exploratory Data Analysis (12 points)
- Univariate analysis of all features (distributions, outliers)
- Bivariate analysis against the target variable `status`
- Visualizations: histograms, boxplots, countplots, stacked bar charts, heatmap
- Answer the 5 guided questions with clear observations

### Step 2: Data Preprocessing (4 points)
- Drop `ID` column (not predictive)
- Encode categorical variables (label encoding or one-hot encoding with `drop_first=True`)
- Per FAQ: `drop_first=True` is used for encoding, which drops one category per feature to avoid multicollinearity. Note that for `profile_completed` this has an ordinal relationship (Low < Medium < High) so label encoding may be more appropriate
- Outlier detection and treatment (if needed)
- Train/test split (70/30 or 80/20)
- No normalization/standardization needed for tree-based models (per FAQ)

### Step 3: Decision Tree Model (5 + 10 = 15 points)
- Build baseline Decision Tree classifier
- Evaluate performance (accuracy, precision, recall, F1, confusion matrix, ROC-AUC)
- Hyperparameter tuning via GridSearchCV (max_depth, min_samples_split, min_samples_leaf, criterion)
- Evaluate tuned model and compare
- Feature importance analysis

### Step 4: Random Forest Model (5 + 10 = 15 points)
- Build baseline Random Forest classifier
- Evaluate performance (same metrics)
- Hyperparameter tuning via GridSearchCV (n_estimators, max_depth, min_samples_split, min_samples_leaf, max_features)
- Evaluate tuned model and compare
- Feature importance analysis

### Step 5: Actionable Insights & Recommendations (6 points)
- Summarize key factors driving conversion
- Profile of high-conversion leads
- Business recommendations for resource allocation

### Step 6: Notebook Quality (8 points)
- Well-structured with clear markdown headers
- Inline comments explaining code logic
- Observations after every visualization
- Clean output (no warnings/errors)

## 6. Evaluation Metric Considerations

Since ExtraaLearn wants to **identify leads likely to convert** (class 1), **recall** for class 1 is important (don't miss potential customers). However, **precision** also matters (don't waste resources on false positives). The **F1-score** and **ROC-AUC** are good balanced metrics. The confusion matrix will help visualize the trade-off.

## 7. Technical Notes from FAQ

- Use `.predict()` method on the model object, not call the model directly
- Pass correct test variables to the metrics function (y_test, not y_train)
- `drop_first=True` in encoding is standard practice to avoid dummy variable trap
- Tree-based models don't need normalization/standardization
- ~28% positive class rate is borderline for class weights - consider using `class_weight='balanced'` or custom weights favoring class 1

## 8. Submission Requirements

- **Format**: `.html` (convert from `.ipynb`)
- **Single file** submission only
- Run notebook start-to-finish before export
- Remove all warnings and errors
- **Due**: March 3, 2026
- **Total marks**: 60 points

## 9. Libraries Needed

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import (accuracy_score, precision_score, recall_score,
                             f1_score, confusion_matrix, classification_report,
                             roc_auc_score, roc_curve)
from sklearn.preprocessing import LabelEncoder
import warnings
warnings.filterwarnings('ignore')
```
