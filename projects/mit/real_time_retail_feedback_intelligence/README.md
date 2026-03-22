# Real-Time Retail Feedback Intelligence — GenAI Capstone Project

## Problem Statement

Online retailers receive thousands of customer reviews daily across product categories. Manually reading, categorizing, and acting on this volume of unstructured feedback is slow, inconsistent, and expensive. Critical issues — sizing problems, quality defects, delivery complaints — can go undetected for weeks.

This project uses **Generative AI (OpenAI API)** to automate retail feedback intelligence: categorizing reviews, assessing sentiment, summarizing issues, generating personalized customer responses, and extracting actionable business insights — all through prompt engineering.

## Dataset

**Source:** Women's clothing e-commerce retailer reviews
**Records:** 23,486 reviews
**Features:** 10 columns (5 numerical, 5 categorical)
**Delimiter:** Semicolon (`;`)

### Data Dictionary

| Column | Description |
|--------|-------------|
| Clothing.ID | Product identifier |
| Age | Reviewer's age |
| Title | Short review title (nullable) |
| Review.Text | Full review body (primary input for GenAI) |
| Rating | 1–5 star rating |
| Recommended.IND | Binary — 1 if customer recommends the product |
| Positive.Feedback.Count | Number of other customers who found review helpful |
| Division.Name | Product division (General, General Petite, Intimates) |
| Department.Name | Department (Tops, Dresses, Bottoms, Intimate, Jackets, Trend) |
| Class.Name | Specific product class (Blouses, Knits, Dresses, Pants, etc.) |

## Approach

1. **Exploratory Data Analysis:** Rating distributions, department analysis, word clouds for high/low ratings
2. **Prompt Engineering:** Three techniques (Zero-Shot, Few-Shot, Chain-of-Thought), each with V1 and V2 prompts
3. **LLM-as-Judge:** Automated evaluation scoring (0–1) comparing V1 vs V2 for each technique
4. **Product Recommendation:** Binary classification using LLM, evaluated with accuracy, confusion matrix, classification report
5. **Comparison & Insights:** Cross-technique comparison, sentiment visualization, actionable business recommendations

## Results

| Technique | V1 Score | V2 Score | Improvement |
|-----------|----------|----------|-------------|
| Zero-Shot | 0.947 | 0.126 | -0.822 |
| Few-Shot | 0.683 | **0.932** | +0.249 |
| CoT | 0.328 | 0.168 | -0.159 |

**Best technique:** Few-Shot V2 (0.932)
**Recommendation accuracy:** 90% (weighted F1: 0.91)

## Repository Structure

```
real_time_retail_feedback_intelligence/
├── README.md
├── Makefile
├── notebooks/
│   ├── Real-Time_Retail_Feedback_Intelligence_Full_code.ipynb
│   └── Dataset - Real-Time Retail Feedback Intelligence.csv
├── data/
│   └── raw/
│       └── Dataset - Real-Time Retail Feedback Intelligence.csv
├── reports/
│   ├── 1 - assignment.md
│   ├── 2 - milestone.md
│   ├── 3 - final-submission.md
│   ├── 4 - faq.md
│   ├── 5 - faq-project.md
│   ├── 6 - objectives.md
│   └── report_template.pdf
├── outputs/
│   ├── Real-Time_Retail_Feedback_Intelligence_Full_code.html
│   └── Real-Time_Retail_Feedback_Intelligence_Full_code.pdf
├── final_submission/
│   └── Real-Time_Retail_Feedback_Intelligence_Full_code.html
└── src/
```

## Quick Start

```bash
# Install dependencies (uv preferred)
make install-uv

# Or with pip
make install

# Launch JupyterLab
make lab

# Export notebook to HTML (for submission)
make export-html
```

## Notes

- Primary analysis notebook: `notebooks/Real-Time_Retail_Feedback_Intelligence_Full_code.ipynb`
- Submit **only** the `.html` file — single file submission required
- API budget: $20 limit on OpenAI API; uses `gpt-4o-mini` for cost efficiency
- Part of MIT AAIDSP Capstone (Course 8)
