# Unemployment_Analysis_India

Project Overview:

The Unemployment Analysis project is designed to study unemployment trends across different states, region,and urban/rural sectors.The analysis providing insights into how employment levels have changed over time(2016-2021) especially COVID era. It uses structured data stored in an SQL database to analyze unemployment rates across states, regions, and urban/rural sectors. The analysis also includes temporal comparisons (pre and post-pandemic) and geographic distinctions (North, South, East, West, Northeast) in terms of unemployment trends.This comprehensive structure allows for detailed analysis of unemployment trends, including temporal changes, regional comparisons, and post-COVID employment recovery.

Data source:kaggle

Data set link:https://www.kaggle.com/datasets/ysthehurricane/impact-of-covid19-on-unemployment-rate-in-india

Data description:

The dataset includes several tables capturing state-wise and region-wise unemployment data across India, focusing on both rural and urban sectors. Key attributes such as unemployment rate, number of employed individuals, and labor participation rate are recorded for each state, accompanied by a date to track temporal trends. The data is organized by state and further categorized by region (North, South, East, West, and Northeast), with geographic markers like longitude and latitude for spatial analysis. Separate tables are provided for monthly total, rural, and urban unemployment statistics, allowing for detailed sectoral comparisons. Additionally, the dataset supports longitudinal analysis, making it possible to study trends over time, especially before and after the COVID-19 pandemic.

Data processing:

I downloaded data from Kaggle in TXT format and imported it into Excel, utilizing delimiters for proper formatting. Subsequently, I employed Power Query to unpivot the date column and convert it into a suitable format. Following this, I created a database in SQL, establishing four tables by usimg commands, into which I imported the processed data.

![db](https://github.com/user-attachments/assets/13691877-8748-4cb0-9855-3f82af13b81b)
![db2](https://github.com/user-attachments/assets/afdd2b2b-6147-47bb-b9db-db33a477b8ee)

Conclusion:

Q1. What has been the unemployment rate in India over the past five years?

Unemployment increased from 2017 to 2020, but has shown a declining trend in 2021.

![SQ1](https://github.com/user-attachments/assets/df738cf5-8022-46b7-a7c0-d374213d1ba0)

Q2. How do rural and urban unemployment rates compare during this period?

Urban areas have contributed more to unemployment than rural areas over the past five years.

![SQ2](https://github.com/user-attachments/assets/4f081328-4140-450d-a256-73b886ef3153)

Q3. How have individual states in India performed in terms of unemployment over the last five years?

Tripura has consistently performed poorly, while Karnataka has emerged as the best performer.

![SQ3](https://github.com/user-attachments/assets/d41e173e-a82a-45e0-a52c-3b3450ffe334)

Q4. Within lower-performing states, which regions (rural or urban) contribute most to unemployment?

The trend mirrors the national pattern, with urban areas contributing more to unemployment than rural regions.

![SQ4](https://github.com/user-attachments/assets/a24be653-3bc9-44a6-a659-4542120d88ea)

Q5. Region wise trend based on individual state performance?

Regionally, northern states tend to have higher unemployment rates compared to other regions.

![SQ5](https://github.com/user-attachments/assets/398e682e-d7e3-4273-adc9-1ec3d86f38d1)

Q6. For each region what are the unemployment rate for states?

In north region,Haryana has the highest unemployment rate.

![SQ6](https://github.com/user-attachments/assets/8dd9ae60-8a0a-4d86-88f7-ffa6e87c6e3c)

In south region,Kerala has the highest unemployment rate.

![SQ7](https://github.com/user-attachments/assets/e6eb8dab-cd29-450e-9bc4-66b78036fada)

In east region,Jharkhand has the highest unemployment rate.

![SQ8](https://github.com/user-attachments/assets/9dd89c3a-2a4c-496e-98e9-c7eaba62de5d)

In west region,Goa has the highest unemployment rate.

![SQ9](https://github.com/user-attachments/assets/5ebff1b1-9b05-4869-9757-0b2d1a8b0d87)

In northesat region,Tripura has the highest unemployment rate.

![SQ10](https://github.com/user-attachments/assets/b7bdcdf2-4f4c-435f-a725-bf0d7135c066)

Q6. Which state has seen the most improvement in reducing unemployment post-COVID?

Sikkim has shown the greatest reduction in unemployment, while Goa has underperformed relative to other states.

![SQ11](https://github.com/user-attachments/assets/ab75c5b1-98d0-459c-b462-6af47c4b814a)
