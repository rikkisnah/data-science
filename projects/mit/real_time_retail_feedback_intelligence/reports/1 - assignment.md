# Capstone Project – Generative AI  
## Milestone Submission: Real-Time Retail Feedback Intelligence

| Field | Details |
|-------|---------|
| **Available From** | 17 Mar 26, 11:25 AM |
| **Due Date** | 24 Mar 26, 2:00 AM |
| **Total Marks** | 20 |
| **Submission Type** | File Upload |
| **Max File Size** | 100 MB (PDF or HTML) |

*Need help? Get instant assistance from Glaide!*

---

## Description

### Submission Due Date – Important Note

For this project, you will analyze and categorize a sample of **50 customer reviews**. This number is intentional. The API has a budget limit of $20, and running prompts on large datasets can quickly exhaust your quota—especially because this exercise may involve multiple iterations, prompt refinements, and repeated evaluations.

To control costs and experiment efficiently, use this approach:

1. **Initial testing**: Use very small samples (5–10 reviews) to validate your prompt structure and logic.
2. **Final evaluation**: Scale up to 50 reviews so you have enough data to compare Zero-Shot, Few-Shot, and Chain-of-Thought techniques without draining your budget.

If your API quota is exhausted, you may temporarily switch to another free AI assistant API. Note that external tools may also have rate limits or token caps, so build retry logic and manage throttling in your code.

---

## Submission Guidelines

### Two Ways to Complete This Project

| Aspect | Full-Code | Low-Code |
|--------|-----------|----------|
| **Who should choose** | Learners aiming for hands-on coding roles and building solution code from scratch | Learners aiming for managerial roles, focused on solution review, interpretation, recommendations, and business communication |
| **Shared elements** | Perform exploratory data analysis to identify insights and recommendations | Same |
| **Graded focus** | 10–20% on the quality of the final code | 10–20% on the quality of the final business report |
| **Final submission** | Solution notebook from the full-code template | Business report in .pdf format |
| **Format** | `.html` | `.pdf` |

These options let you choose the approach that best fits your learning goals.

---

## Steps to Complete the Assessment

**Note:** If you submit both a report and a notebook, **only the report will be evaluated**. Ensure your submission covers all sections in the rubric.

### i. Full-Code Version

1. Download the full-code version of the learner notebook.
2. Follow the instructions in the notebook to complete the project.
3. Write insights and recommendations clearly in comments.
4. Submit **only** the solution notebook prepared from the learner notebook (format: `.html`).

### ii. Low-Code Version

1. Download the low-code version of the learner notebook.
2. Follow the instructions in the notebook to complete the project.
3. Prepare a business report with insights and recommendations for the business problem.
4. Submit **only** the presentation (format: `.pdf`).

---

## Other Requirements

1. **Plagiarism**: Any assignment found copied or plagiarized will not be graded and will receive zero marks.

2. **Timing**: Submit on time. Late submissions will not be accepted.

3. **Submission will not be evaluated if:**
   - It is submitted after the deadline, or
   - More than one file is submitted.

---

## Best Practices

### Full-Code Submissions

- Document the notebook well: inline comments for code, markdown cells for observations and insights.
- Run the notebook start to finish in order before submitting.
- Remove all warnings and errors before submission.
- Submit as HTML (`.html`), **not** as a notebook (`.ipynb`).
- See the FAQ page for common project-related queries.

### Low-Code Submissions

- Write for the Data Science lead of a company.
- Include:
  - Business overview of the problem and solution approach
  - Key findings and insights that can drive business decisions
  - Business recommendations
- Explain key takeaways simply and clearly.
- Including the potential benefits of implementing the solution will strengthen your submission.
- Avoid copying and pasting from the notebook; avoid showing code unless it is the focal point.
- Submit as PDF (`.pdf`), **not** as `.pptx`.
- See the FAQ page for common project-related queries.

---

## Rubric

| Criteria | Points | Description |
|----------|--------|-------------|
| **Problem Definition and EDA** | 4 | • Context: Why is analyzing retail feedback important? • Objectives: What is the goal of automating this process? • Data exploration: Patterns in ratings, departments, and word clouds • Any data treatments or preprocessing required |
| **Prompt Engineering and Structured Data Generation** | 4 | • Design choices for Zero-Shot, Few-Shot, and CoT prompts • How prompts were improved from Version 1 to Version 2 • Whether the model generated structured outputs successfully |
| **Evaluation Framework and LLM-as-Judge** | 4 | • Rationale for using an LLM-as-Judge • How the judge function was implemented • What initial scores indicate about baseline performance |
| **Applying GenAI for Product Recommendation** | 4 | • How the recommendation prompt was designed • How model output was parsed into 0/1 predictions • Performance metrics: accuracy, confusion matrix, classification report |
| **Observations and Initial Insights** | 4 | • Early observations on consistency and quality across prompting techniques • Key takeaways from EDA and initial runs • Early hypotheses on the most effective prompting technique |

**Total: 20 points**

---

## Resources

**If Full-Code:** Download *Learner Notebook - Full Code Version*.  
**If Low-Code:** Download *Learner Notebook - Low Code Version*.

- Capstone Briefing Session Slides
- Capstone Guidelines and Instructions
- Capstone Project: Points to Note
- Problem Statement - Real-Time Retail Feedback Intelligence
- Dataset - Real-Time Retail Feedback Intelligence
- Learner Reference Notebook - Full Code Version
- Learner Reference Notebook - Low Code Version
- FAQs - Real-Time Retail Feedback Intelligence
- API_KEY ACCESS – Instructions: GL OpenAI Access Token
- Mentor Learning Session: Milestone Submission

---

*Happy Learning!*
