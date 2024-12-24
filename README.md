# Adventure-Work_Sale-Analysis
### Overview
This project focuses on analyzing sales data for Adventure World to uncover key insights and support data-driven decision-making. By leveraging SQL for data extraction and transformation and Power BI for dynamic visualization, the analysis provides a clear picture of sales trends, customer behavior, and performance metrics.

### Features
- **SQL Integration**: Efficiently extracts and processes raw sales data from the database. Complex queries ensure accuracy and relevance.
- **Interactive Dashboards**: Power BI dashboards highlight:<br>
Monthly and yearly sales performance.<br>
Top-selling products and categories.<br>
Customer purchasing behavior.<br>
RFM analysis.<br>
- **Insights & Recommendations**: Actionable insights are presented to guide strategic decisions and improve business performance.
### Tools Used
- **SQL**: Data extraction, transformation, and preparation.
- **Power BI**: Data visualization and report generation.
### Key Highlights
- Comprehensive visualizations to identify sales trends and patterns.
- Drill-through and slicers for deeper insights into specific time periods or product categories.
- Advanced SQL queries to handle large datasets and ensure data quality.
### Data Structure and Initial Check
The data model for this project includes 8 interconnected tables—Customer, Salesperson, Address, Product, Product Category, Product Subcategory, Sales Data, and Calendar—comprising 121,317 rows of data spanning from 2011 to 2014. This structure supports a comprehensive sales analysis by integrating transactional details, customer information, geographic data, and product hierarchies, enabling dynamic insights through SQL and Power BI.
![image](https://github.com/user-attachments/assets/8d7301e1-732f-4a64-b4a9-cbe5c5b7d49e)
### Overview Finding
The analysis provided valuable insights into sales performance from 2011 to 2014, incorporating RFM (Recency, Frequency, Monetary) analysis to identify high-value customer segments. Key findings include top-performing products, high-revenue categories, and regional sales trends. RFM analysis highlighted loyal and high-spending customers. Salesperson performance data revealed key contributors to revenue growth, while seasonal trends and year-over-year comparisons identified opportunities to optimize inventory and marketing efforts, driving actionable recommendations for sustained business improvement.
### Executive Overview

1. ##### Profitability Analysis:

- The Current GP% is 11.86%, with a current gross profit of $13M, showcasing a steady growth compared to the LY GP% (last year) of 11% and LY GP of $10M. <br>

2. ##### Sales Performance:

- Current Sales have reached $110M this year, surpassing the LY Sales of $90M.<br>
Monthly sales trends reveal peak performance in Q2 and Q4, aligning with seasonal demand patterns.<br>

3. ##### Cost vs. Sales:

- The Sales vs. Cost Comparison indicates consistent alignment between revenue and costs, with key cost-saving periods in June and December, where sales significantly outperformed costs.

4. ##### Quantity and Transactions:

- A total of 275K units sold and 31K transactions indicate increased customer engagement, improving from LY (213K units and 20K transactions).

5. ##### Yearly Forecasting:
   
- The Sales Forecasting by Year projects sustained growth through 2014, with potential to cross $0.1B.

6. ##### Year-to-Date (YTD) Sales Performance:

- YTD analysis highlights growth compared to the previous three years, with consistent increases across most months, particularly in October and November.

![image](https://github.com/user-attachments/assets/41446a7a-8c40-41a7-90f0-11d00daf7521)

### Product Analysis

1. ##### Product Category Breakdown:

- Bikes dominate sales, contributing 45.42% of total sales with 134 subcategories, followed by Clothing at 32.88% (97 subcategories) and Components at 9.83% (29 subcategories). <br>
- Accessories have the smallest share, indicating potential for growth or reevaluation.
  
2. ##### Top Performing Subcategories (Sales):

- Road Bikes lead with $44M in sales, followed by Mountain Bikes ($37M) and Touring Bikes ($15M). These categories account for the majority of revenue. <br>
- The consistent demand for high-ticket items like bikes signifies their importance in overall profitability.
  
3. ##### Top Performing Subcategories (Volume):

- Road Bikes also top in volume with 47K units sold, followed by Mountain Bikes (28K) and Jerseys (23K).<br>
- Clothing, especially Jerseys, shows strong volume performance despite lower total sales compared to bikes.
4. ##### Contribution and Profitability:

- While Clothing contributes $390,871 in GP with an 18.25% GP%, the sales contribution remains at 1.94%.<br>
- The Bikes category significantly contributes to overall profitability with $13M GP, demonstrating its critical role in maintaining margins.
5. ##### Costs and Customer Engagement:

- High costs are observed in bikes, with Road Bikes at $1.75M. However, these are offset by higher transaction volumes and engaged customer bases.<br>
- Clothing exhibits higher GP% but has smaller transaction sizes and fewer customers, suggesting room for expansion in this segment.<br>
This analysis underscores the dominance of the Bikes category while identifying growth opportunities in Clothing and other underperforming subcategories. It informs strategic decisions around product mix optimization and targeted marketing efforts.<br>


![image](https://github.com/user-attachments/assets/5b3568ff-a075-4291-b1f3-daa941972e8c)


### Customer Analysis

1. ##### Customer Distribution by Continent:

- North America accounts for the majority of customers (51.71%), followed by Europe (29.33%) and Pacific (18.96%).
- This geographic concentration highlights strong market presence in North America, with potential opportunities for growth in Europe and the Pacific.

2. ##### Top Customers by Sales:

- Roger Harui leads with $882K in sales, followed closely by Reuben D'sa ($856K) and Andrew Dixon ($854K).
- These high-value customers contribute significantly to overall revenue, reinforcing their importance for targeted retention strategies.
3. ##### Top Customers by Volume:

- Reuben D'sa also leads in transaction volume (2.7K units), followed by Kevin Liu (2.6K) and Marcia J. Sultan (2.4K).
- High-volume customers often represent recurring purchases, signaling loyalty and potential for upselling or cross-selling opportunities.

4. ##### Regional Performance (Europe):

- Europe generates $3.63M in GP, with a GP% of 18.21%, indicating strong profitability despite lower total sales compared to North America.
- Within Europe, France emerges as a top-performing country, contributing $1.08M in GP. Customers like Lisa Cai exhibit a high GP% of 43.99%, underscoring their high-value status.

5. ##### Profitability and Cost Analysis:

- Total GP across all regions is $13.08M, with a GP% of 18.35%.
- High-cost segments should be closely monitored, as profitability could be improved with better cost management.

6. #####Engagement Metrics:

- Across all regions, 295 total products are purchased by 274.9K transactions, reflecting a balanced mix of customer engagement. <br>
 This analysis highlights opportunities to deepen customer relationships in high-performing regions, optimize cost structures, and tailor strategies for top customers to maximize revenue and profitability.
![image](https://github.com/user-attachments/assets/70d70997-9a61-414e-8c9c-7d88db1b63df)

### RFM Analysis

1. ##### Customer Value and Engagement
   
- Looking at the top performing customers first, Andrew Dixon stands as the star client with an impressive RFM score of 5.51, followed closely by Rachel Ross at 5.01.
- When we round out the top performers, we see Roger Hand, Robert R. Vessa, and Joseph N. Castle-lobo all scoring above 4.30.
- These high RFM scores indicate these customers are not just big spenders, but also frequent and recent buyers - they're the backbone of the business.

2. ##### Recency-Frequency Summary

- Out of the total 19,119 customers, there is a substantial group of one-time buyers (around 7,353 customers).
- A smaller but significant segment of moderate buyers (2-3 purchases).
- The business has managed to cultivate a loyal base of high-frequency customers (15+ purchases)
  
3. ##### Recency-Frequency by Monetary Score

- High-frequency customers (15 or more purchases) contribute significantly to the total revenue of $110M.
- Even customers with moderate purchase frequency (7 to 12 purchases) are generating substantial value.
- There's a clear correlation between purchase frequency and monetary value, with more frequent buyers typically spending more.

This analysis highlight a business with a healthy mix of customer segments, from high-value loyal customers to potential opportunities for reactivation. The challenge appears to be converting more of the one-time buyers into repeat customers while maintaining the strong relationships with top performers  

![image](https://github.com/user-attachments/assets/82524374-4cce-474f-8393-e4a6a1dd0bc0)

### Conclusion
The Sales Performance Analysis dashboard offers a comprehensive view of product trends, customer behavior, and regional performance. Bikes stand out as the top revenue driver, with Road and Mountain Bikes leading in both sales and volume. North America remains the strongest market, while Europe and the Pacific show potential for expansion. RFM analysis highlights the importance of nurturing high-value customers with strong recency, frequency, and monetary scores.

Your insights and ideas are invaluable! Let’s collaborate to tackle the intriguing challenges and uncover deeper opportunities within this data analysis journey.
















