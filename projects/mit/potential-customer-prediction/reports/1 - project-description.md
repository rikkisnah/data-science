# Potential Customers Prediction — Project Description

**Available:** 23 Feb 2026, 10:25 AM  
**Due:** 03 Mar 2026, 10:25 AM  
**Total marks:** 60  
**Submission type:** File Upload  

Need help? Get instant assistance from Glaide.

---

## Description

### Context

The EdTech industry has grown strongly over the past decade. The online education market was forecast to reach $286.62bn by 2023, with a compound annual growth rate (CAGR) of 10.26% from 2018 to 2023. Modern online education has driven this growth through features such as ease of information sharing, personalized learning, and transparent assessment.

The sector attracts many new customers and new companies. With digital marketing, companies can reach a wide audience. Customers who show interest in these offerings are termed **leads**. EdTech companies obtain leads from sources such as:

- **Social/online:** Customer interacts with marketing on social media or other online platforms.
- **Website/app:** Customer browses and downloads brochures.
- **Email:** Customer contacts by email for more information.

Companies then nurture leads and try to convert them to paid customers. Representatives connect by call or email to share further details.

### Objective

**ExtraaLearn** is an early-stage startup offering programs on cutting-edge technologies to students and professionals for upskilling and reskilling. With many leads generated regularly, a key challenge is identifying which leads are more likely to convert so resources can be allocated accordingly.

As a data scientist at ExtraaLearn, you are given leads data to:

1. **Analyze and build an ML model** to identify which leads are more likely to convert to paid customers.
2. **Find the factors** driving lead conversion.
3. **Create a profile** of leads likely to convert.

---

## Data Description

The dataset contains lead attributes and their interaction details with ExtraaLearn.

| Variable | Description |
|----------|-------------|
| **ID** | Lead identifier. |
| **age** | Age of the lead. |
| **current_occupation** | Current occupation. Values: `Professional`, `Unemployed`, `Student`. |
| **first_interaction** | First touchpoint. Values: `Website`, `Mobile App`. |
| **profile_completed** | Share of profile filled on website/app. Values: `Low` (0–50%), `Medium` (50–75%), `High` (75–100%). |
| **website_visits** | Number of website visits. |
| **time_spent_on_website** | Total time (seconds) on the website. |
| **page_views_per_visit** | Average pages viewed per visit. |
| **last_activity** | Last interaction type with ExtraaLearn: |
| | • **Email:** Seeking details via email; representative shared brochure, etc. |
| | • **Phone:** Call or SMS with a representative. |
| | • **Website:** Live chat, profile update, etc. |
| **print_media_type1** | Flag: saw ExtraaLearn ad in Newspaper. |
| **print_media_type2** | Flag: saw ExtraaLearn ad in Magazine. |
| **digital_media** | Flag: saw ExtraaLearn ad on digital platforms. |
| **educational_channels** | Flag: heard about ExtraaLearn via education channels (forums, threads, educational sites). |
| **referral** | Flag: heard about ExtraaLearn through referral. |
| **status** | Conversion flag: `1` = paid customer, `0` = unpaid. |

---

## Submission Guidelines

You can complete the project in one of two ways:

| Option | Best for | Same in both | Different | Final submission | Format |
|--------|----------|--------------|-----------|------------------|--------|
| **Full-code** | Learners aiming for hands-on coding roles; building solution code from scratch. | Exploratory data analysis and insights/recommendations. | 10–20% of grade on **code quality**. | Solution notebook from full-code template. | `.html` |
| **Low-code** | Learners aiming for managerial roles; focus on review, interpretation, recommendations, and business communication. | Same EDA and insights. | 10–20% of grade on **business report quality**. | Business report with problem definition, insights, and recommendations. | `.pdf` |

**Important:** Only the file type for your chosen track is evaluated. Ensure all rubric sections are covered in that submission.

### Full-code version

1. Download the full-code learner notebook.
2. Follow the notebook instructions to complete the project.
3. Add clear insights and recommendations in comments.
4. Submit **only** the solution notebook derived from the learner notebook — **format: .html**.

### Low-code version

1. Download the low-code learner notebook.
2. Follow the notebook instructions.
3. Prepare a business report with insights and recommendations.
4. Submit **only** the report — **format: .pdf**.

### General rules

- Submissions that are copied or plagiarized will receive zero marks.
- Late submissions are not accepted.
- A submission will **not** be evaluated if it is late **or** if more than one file is submitted.

---

## Best Practices

### Full-code submissions

- Document the notebook well: inline comments for code, markdown for observations and insights.
- Run the notebook from start to finish in order before submitting.
- Remove all warnings and errors.
- Submit as **HTML (.html)**, not as `.ipynb`.
- See the FAQ for common project queries.

### Low-code submissions

- Write the report for a Data Science lead.
- Include: business overview and solution approach; key findings and insights; business recommendations.
- Explain takeaways clearly; avoid unnecessary code unless it is the focal point.
- Including potential benefits of the solution will strengthen the report.
- Submit as **PDF (.pdf)**, not as `.doc`.
- See the FAQ for common project queries.

---

## Rubric

| Criteria | Points |
|----------|--------|
| **Exploratory Data Analysis** | 12 |
| Problem definition; univariate and bivariate analysis; comments on visualizations (e.g. range, outliers, distributions); appropriate visualizations; meaningful observations on variables and relationships. | |
| **Data pre-processing** | 4 |
| Prepare data for modelling: drop insignificant variables (with comments); missing value treatment (if needed); outlier detection/treatment (if needed); feature engineering (if possible); data split. | |
| **Model building — Decision Tree** | 5 |
| Build model; comment on performance. | |
| **Model performance — Decision Tree** | 10 |
| Tune hyperparameters (e.g. GridSearchCV); evaluate on appropriate metric; comment on performance; feature importance and comments. | |
| **Model building — Random Forest** | 5 |
| Build model; comment on performance. | |
| **Model performance — Random Forest** | 10 |
| Tune hyperparameters; evaluate on appropriate metric; comment on performance; feature importance and comments. | |
| **Actionable insights & recommendations** | 6 |
| Key takeaways (e.g. important features); recommendations the business can act on. | |
| **Report / Notebook overall quality** | 8 |
| *Low-code:* Structure, flow, crispness, visual appeal. *Full-code:* Structure, flow, well-commented code. | |
| **Total** | **60** |

---

Happy learning!
