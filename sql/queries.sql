-- Total Revenue by Brand
SELECT Brand, SUM("Revenue Usd") AS Total_Revenue
FROM nike_puma_clean
GROUP BY Brand;

-- Top 10 Best-Selling Products
SELECT "Model Name", SUM("Units Sold") AS Units_Sold
FROM nike_puma_clean
GROUP BY "Model Name"
ORDER BY Units_Sold DESC
LIMIT 10;

-- Lowest Performing Products
SELECT "Model Name", SUM("Revenue Usd") AS Revenue
FROM nike_puma_clean
GROUP BY "Model Name"
ORDER BY Revenue ASC
LIMIT 10;

-- Category Distribution
SELECT Category, SUM("Units Sold") AS Units
FROM nike_puma_clean
GROUP BY Category;
