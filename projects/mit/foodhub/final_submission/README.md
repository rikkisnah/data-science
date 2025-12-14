# FoodHub — Final Submission

## Project Overview

This project analyzes FoodHub order data to derive business insights for a New York-based food aggregator company. The analysis examines 1,898 food delivery orders across 178 restaurants to understand demand patterns, customer behavior, and operational efficiency.

## Dataset

- **1,898 orders** from 1,200 unique customers
- **178 restaurants** across multiple cuisine types
- **9 features:** order details, costs, timing metrics, and ratings
- Time period captures both weekday and weekend ordering patterns

## Methodology

1. **Data Cleaning:** Handled implicit missing values in ratings column
2. **Univariate Analysis:** Distribution analysis of all variables
3. **Multivariate Analysis:** Correlation and cross-tabulation analysis
4. **Business Metrics:** Revenue calculation, delivery time analysis
5. **Segmentation:** Analysis by cuisine type and day of week

## Results

### Operational Performance
- Average total delivery time: 51.53 minutes
- 90% of orders delivered within 60 minutes
- Weekend deliveries 20% faster than weekdays

### Revenue Metrics
- Net revenue: ~$6,166 from $31,475 total order value
- Effective commission rate: 19.6%
- Premium tier (>$20) generates 59% of commission revenue

### Customer Insights
- 39% of orders not rated (engagement opportunity)
- Top 3 customers placed 32 orders (1.7% of total)
- American and Japanese cuisines dominate preferences

### Key Recommendations
1. Implement rating incentives to improve feedback rates
2. Upsell orders in $15-$20 range to premium tier
3. Optimize weekday delivery operations
4. Focus marketing on weekends (64% of orders)

## Files Included

| File | Description |
|------|-------------|
| `artifacts/5_FDS_Project_LearnerNotebook_FullCode.ipynb` | Complete analysis notebook |
| `artifacts/5_FDS_Project_LearnerNotebook_FullCode.html` | HTML export of notebook |

## Assumptions & Limitations

### Assumptions
- Commission rates: 25% for orders >$20, 15% for orders $5-$20
- "Not given" ratings excluded from average calculations
- Weekday defined as Monday-Friday, Weekend as Saturday-Sunday

### Limitations
- Single time period snapshot (no seasonal analysis)
- No customer location data for geographic analysis
- Rating bias possible from self-selection (only engaged customers rate)
- No competitor comparison data available
