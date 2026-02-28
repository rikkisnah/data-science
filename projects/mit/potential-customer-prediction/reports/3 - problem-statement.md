# Problem Statement

## Context

The EdTech industry has grown sharply over the past decade. Forecasts put the online education market at **$286.62bn by 2023**, with a compound annual growth rate (CAGR) of **10.26%** from 2018 to 2023. Online education has expanded quickly thanks to advantages such as:

- Ease of information sharing
- Personalized learning
- Transparent assessment

The sector attracts many new customers, and new companies keep entering the space. With digital marketing, companies can reach a wide audience; people who show interest in their offerings are called **leads**.

**Typical lead sources for EdTech companies:**

- The customer interacts with marketing on social media or other online platforms
- The customer browses the website/app and downloads a brochure
- The customer contacts the company by email for more information

Companies then nurture these leads and try to convert them into paid customers. Representatives get in touch by phone or email to share more details.

---

## Objective

**ExtraaLearn** is an early-stage startup that offers programs on cutting-edge technologies to students and professionals for upskilling and reskilling. With many leads generated regularly, a key challenge is **identifying which leads are most likely to convert**, so resources can be allocated effectively.

As a data scientist at ExtraaLearn, you are given leads data to:

1. **Analyze and build an ML model** to identify which leads are more likely to convert to paid customers
2. **Identify the factors** that drive lead conversion
3. **Create a profile** of leads who are likely to convert

---

## Data Dictionary

The dataset includes attributes of leads and their interactions with ExtraaLearn.

| Field | Description |
|-------|-------------|
| **ID** | Lead identifier |
| **age** | Age of the lead |
| **current_occupation** | Current occupation. Values: `Professional`, `Unemployed`, `Student` |
| **first_interaction** | How the lead first interacted. Values: `Website`, `Mobile App` |
| **profile_completed** | Percentage of profile filled on website/app. Values: `Low` (0–50%), `Medium` (50–75%), `High` (75–100%) |
| **website_visits** | Number of times the lead visited the website |
| **time_spent_on_website** | Total time spent on the website |
| **page_views_per_visit** | Average number of pages viewed per visit |
| **last_activity** | Last type of interaction with ExtraaLearn (see below) |
| **print_media_type1** | Flag: saw ExtraaLearn ad in Newspaper |
| **print_media_type2** | Flag: saw ExtraaLearn ad in Magazine |
| **digital_media** | Flag: saw ExtraaLearn ad on digital platforms |
| **educational_channels** | Flag: heard about ExtraaLearn via education channels (forums, discussion threads, educational websites, etc.) |
| **referral** | Flag: heard about ExtraaLearn through a referral |
| **status** | Flag: whether the lead converted to a paid customer |

**Last activity** can be one of:

- **Email Activity** — e.g. requested program details by email, received brochure from a representative
- **Phone Activity** — e.g. phone call or SMS with a representative
- **Website Activity** — e.g. live chat with a representative, profile update on the website
