#Create DataBase

Create database superstore;
 -- Create is a DDL Command used to create a database.
 
# Set DataBase 

 use superstore;
	-- Use Keyworrd is used to set the Database 

# Show Record of table
SELECT * FROM superstore.superstoreorders;
	-- select Is a QDL Command, Used to fetch the result form the database

# Describe  Table
describe superstoreorders;
	-- Describe Keyword is sued to show the defination of Table
    
# converting the text Order Date to Date 
update superstoreorders
set order_date = STR_TO_DATE(order_date, '%d, %m, %Y');
 
# converting the text Order Date to Date 
update superstoreorders
set Ship_date = STR_TO_DATE(Ship_date, '%d, %m, %Y');



alter table superstoreorders
modify order_date Date;

alter table superstoreorders
modify Ship_date Date;


# Show Total Order
select count(*) As Total_Order from superstoreorders;
	-- Count() is an agreegate Method, than returns the count of data/row/Value from the column / table
    
# Show 1st order Date 
select min(order_date) as First_order_Date from superstoreorders;
	-- MIN() is an agreegate Method, than return thr Minimum Value or lowest value from column / table
    
# Show last order Date 
select max(order_date) as Last_order_Date from superstoreorders;
-- MAX() is an agreegate Method, than return the Maximum Value or Highest value from column / table

# Show Total Category  
select distinct Category from superstoreorders;

	-- DISTINTC () is used to find/Show the Unique Value from the column / table
	-- Here We are showing the Unique Category from the table 

# Show Total Segment  
select distinct Segment from superstoreorders;

	-- DISTINTC () is used to find/Show the Unique Value from the column / table
	-- Here We are showing the Unique Segment from the table 
    
# Show Total Sub-Category  
select distinct Sub_category from superstoreorders;

	-- DISTINTC () is used to find/Show the Unique Value from the column / table
	-- Here We are showing the Unique Sub_category from the table 
    
# Show Total No Of category
select  count( distinct sub_category) Total_Sub_Category from superstoreorders;

	-- DISTINTC () is used to find/Show the Unique Value from the column / table
	-- Here We are showing the Count of Unique Sub_category from the table 

# Show unique Product Name 
select distinct Product_Name from superstoreorders;

	-- DISTINTC () is used to find/Show the Unique Value from the column / table
	-- Here We are showing the Unique Product_Name from the table 

# What is Total Sales
select Sum(sales) Total_Sales From superstoreorders; 
	
    -- SUM () is used to calculate the total of Numerical value from the column / table
	-- Here We are Calculating the total Sum of Sales from the table 
    
# What is Total Quantity
select Sum(quantity) Total_Quantity From superstoreorders; 

# What is Total Profit
select Sum(profit) Total_Profit From superstoreorders; 

	-- SUM () is used to calculate the total of Numerical value from the column / table
	-- Here We are Calculating the total Sum of profit from the table 

# What is AVG Profit
select Avg(profit) Avg_Profit From superstoreorders; 
	
    -- AVG () is used to calculate the AVG of Numerical value from the column / table
	-- Here We are Calculating the Avgerage of profit from the table 

# What is AVG Discount
select Avg(Discount) Avg_Discount From superstoreorders; 
	
    -- AVG () is used to calculate the AVG of Numerical value from the column / table
	-- Here We are Calculating the Avgerage of Discount from the table 
    
# How Many country in the table

select count(Distinct Country) Total_Country From superstoreorders; 

	-- Count() is an agreegate Method, than returns the count of data/row/Value from the column / table
	-- Here We are counting the unique Country from the table 
    
# Find the is higest Product Sales Name 
select * from superstoreorders 
where Sales = (
				select Max(Sales) from superstoreorders
			   );
               
	-- We are using the Sub-Query, Sub-Query is a Query inside Query, The Result of outer Query is always dependent on inner Query
	-- Here We are Finding the maximum sales from the table and then extrating the product complete information based on the Maximum Sales. 

# SHow the 3rd Highest Sales
 
select * from superstoreorders 
where Sales = (
				select Sales from superstoreorders
                order by Sales Desc
                Limit 2,1
			   );  
    -- We are using the Sub-Query, Sub-Query is a Query inside Query, The Result of outer Query is always dependent on inner Query
	-- Here We are using the LIMIT & Offset.
    -- Limit Is used to get the specifit No of record 
    -- Offset is used to get the skip the No pof Row in the result set 
    -- We are finding the 3rd Highest sales, so we skipped the 2 rows and get the 1 that is 3rd row.


select sales from   superstoreorders order by sales desc;             

# Show Total Sales, Profit &  Avg Profit %
select 
	Sum(Sales) As Total_Sales,
	Sum(profit) As Total_Profit,
	round((Sum(profit) / Sum(Sales) )* 100, 2) as Profit_per
from superstoreorders;

-- Here we are using The aggregate Method for calculating the Total Sales, Total Profit and AVG Profit %
-- Round() : Round() is used to round the decimal values

# Show Top 10 Product by Sales & Quantity

select product_name,
Sum(Sales) As Total_Sales,
Sum(Quantity) As Total_Quantity
from superstoreorders
Group by product_name order by Total_Sales Desc limit 10;

-- Here we are Calculating the total Sum OF Sales & Quantity, and Grouping them By Product Name by Group by Clause
-- We are sorting the sales as descending order
-- Using LIMIT : we are seting rules to show limited no od=f record from the table .

# Show Category by Sales 

select Category,
Sum(Sales) As Total_Sales from superstoreorders
Group by Category order by Total_Sales Desc;

-- Here we are Calculating the total Sum of sales, 
-- Group By : Using the gorup by clause , We are grouping the Category
-- Order By : Using Order By we are sorting the Sales in Descending Order( Highest To Lowest)

# Show Yearly Sales

select Year,
Sum(Sales) As Total_Sales from superstoreorders
Group by Year order by Total_Sales Desc;

-- Here we are Calculating the total Sum of sales, 
-- Group By : Using the gorup by clause , We are grouping the Year
-- Order By : Using Order By we are sorting the Sales in Descending Order( Highest To Lowest)

# Show Top 3 Highest Sold Quantity product

select
	product_name, 
	max(Quantity) from superstoreorders
Group by product_name 
order by max(Quantity) Desc 
limit 3;

-- Here we are Calculating the Maximum Quantity, 
-- Group By : Using the gorup by clause , We are grouping the product_name
-- Order By : Using Order By we are sorting the Maximum Quantity in Descending Order( Highest To Lowest)
-- Limit : Using limit, we are setting the rule to show only 3 record of table.


# Show 2nd Highest Sales product

select max(sales) from superstoreorders
where sales < (
				select max(sales) from superstoreorders
			   );

-- Here we are Using Sub-Query, 
-- First We are finding the Max sales , and on the result of Sub-Query we re fetcting the result from Table where Sales = Max Sales


# Which Segment has highest Customer & Sales. 

select 
Segment, 
Count(distinct Customer_Name) Total_Customer,
Sum(Sales) Total_Sales 
from superstoreorders
group by Segment
Order By Total_Sales;

-- Here we are Counting Unique Customer And calculating the Total Sales
-- Group By : Using group By We are Grouping The Segment 
-- Order by : Using Order By we are sorting the Total Sales .



# Show Shipping Mode Wise AVG Shipping Cost & Profit

select 
Ship_mode, 
AVg(profit) AVG_Profit,
AVG(Shipping_Cost) AVG_Shipping_Cost 
from superstoreorders
group by Ship_mode
Order By AVG_Profit;

--  Here We are calculating thr AVG Of Profit & SHipping Cost and Grouping the Shiping Mode abd sorting the Result by AVG Profit

# Calculate the Avg Shipping Days for Each Shiping mode
Select Ship_mode,
AVg(datediff(order_date, Ship_date)) Avg_Shpping_Date
from superstoreOrders
group by Ship_mode;


# Calculate the Avg Of Profit & Discount for Category, Sub_Category & Producte
Select Category, Sub_category, Product_name, 
AVg(profit) As Avg_profit,
Avg(DIscount) As AVg_Discount
from superstoreOrders
group by Category, Sub_category, Product_name
order by Avg_profit DESC ;

# Show Country Wise total Sales & Order Quantity 
Select Country,
SUM(Sales) As Total_Sales,
Sum(Quantity) As Total_Quantity
from superstoreOrders
group by Country
order by Total_Sales DESC ;

# Show Product & Category wise Order Quantity 
Select Product_Name, Category,
Sum(Quantity) As Total_Quantity
from superstoreOrders
group by Product_Name, Category
order by Total_Quantity DESC ;

# Show Region  & sub_category Wise Order Quantity 
Select Region, sub_Category,
Sum(Quantity) As Total_Quantity
from superstoreOrders
group by Region, sub_Category
order by Total_Quantity DESC ;

# Show top 3 Product in each category By Sales 

Select * from (Select Category, Product_Name, Sales,
		dense_rank() 
		Over(Partition By Category Order By Sales Desc ) as dSales_Rank 
		from  superstoreorders) tbl
where  dSales_Rank <=3;



# List the Top 5 Customer By Highest Order Quantity in each Country  

Select Distinct d_Qty_Rank,  Quantity, Country, Customer_Name  from (
				Select Country, Customer_Name, Quantity,
				dense_rank() 
				Over(Partition By Country Order By Quantity Desc ) as d_Qty_Rank 
				from  superstoreorders
			 ) tbl
where  d_Qty_Rank <=5;


# List the Top 5 Customer By Highest Sales revenue in each Region   

Select d_Sales_Rank,  Sales, Region, Customer_Name  from (
				Select *,
				dense_rank() 
				Over(Partition By Region Order By Sales Desc ) as d_Sales_Rank 
				from  superstoreorders
			 ) tbl
where  d_Sales_Rank <=5;

# Show the List of Top 10 Customer Who placed the maximum order 
 
Select 
		Count(Order_Id) as Total_Order,
		Customer_name 
from superstoreorders
		group by Customer_name 
		order by Total_Order DESC
        limit 10;

-- Here We are counting the total Order_Id .
-- Group By : Using The group by, we are grouping the count of order Id by Custromer name
-- order by : Using The order By, Sorting The total Order by descinding Order
-- Limit : Using limit we are fetching the selected no of record from Table.

# Show Region Wise AVG Sales & Profit
Select 
	Round(AVG(SALES),2) avg_Sales, 
	Round(AVG(Profit),2) asvg_Profit, region
from superstoreorders
group by region ;


Select * from superstoreorders;
