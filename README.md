# SampleSuperStore_DataAnalysis_MySQL
#Create DataBase

Create database superstore;

 -- Create is a DDL Command used to create a database.
 
# Set DataBase 

 use superstore;
 
	-- Use Keyworrd is used to set the Database 

# Show Record of table
SELECT * FROM superstore.superstoreorders;

	-- select Is a QDL Command, Used to fetch the result form the database
 
![task3](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/6e6bf0b0-09b9-4482-966d-36acb3cb5adc)

 

# Describe  Table
describe superstoreorders;

	-- Describe Keyword is sued to show the defination of Table
 
 ![Task4](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/3f4a28fd-1af0-4768-990b-44f645237a4c)

    
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
 
 ![task5](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/65352cdd-ae80-4202-8ce6-5c03d82c8dbf)

    
# Show 1st order Date 
select min(order_date) as First_order_Date from superstoreorders;

	-- MIN() is an agreegate Method, than return thr Minimum Value or lowest value from column / table
 
  ![Task6](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/e91130f0-4331-41be-b3f1-8124442f088d)
  
# Show last order Date 
select max(order_date) as Last_order_Date from superstoreorders;

-- MAX() is an agreegate Method, than return the Maximum Value or Highest value from column / table

![task7](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/df7b3a5c-44cd-4d72-9410-0b60ea2ac3d0)

# Show Total Category  
select distinct Category from superstoreorders;

	-- DISTINTC () is used to find/Show the Unique Value from the column / table
	-- Here We are showing the Unique Category from the table 
 
![task8](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/b7e0eaa4-9a71-4954-8444-7cdfb8686f7f)



# Show Total Segment  
select distinct Segment from superstoreorders;

	-- DISTINTC () is used to find/Show the Unique Value from the column / table
	-- Here We are showing the Unique Segment from the table 
 
![task9](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/a3335836-7ac5-4998-8b87-a1ab10cd1640)

    
# Show Total Sub-Category  
select distinct Sub_category from superstoreorders;

	-- DISTINTC () is used to find/Show the Unique Value from the column / table
	-- Here We are showing the Unique Sub_category from the table 
 
![task10](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/600fc1ce-9421-450f-a3ae-b15eb255e084)

    
# Show Total No Of category
select  count( distinct sub_category) Total_Sub_Category from superstoreorders;

	-- DISTINTC () is used to find/Show the Unique Value from the column / table
	-- Here We are showing the Count of Unique Sub_category from the table 
 
![task11](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/965c28a1-5b06-441f-bf9d-3122afddf338)


# Show unique Product Name 
select distinct Product_Name from superstoreorders;

	-- DISTINTC () is used to find/Show the Unique Value from the column / table
	-- Here We are showing the Unique Product_Name from the table 
 
![task12](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/3b05526d-4b3d-4c13-b3f9-cd18e78c07a8)


# What is Total Sales
select Sum(sales) Total_Sales From superstoreorders; 
![task13](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/6840be6a-8936-449a-a05b-3ae75cedd1ae)
	
    -- SUM () is used to calculate the total of Numerical value from the column / table
	-- Here We are Calculating the total Sum of Sales from the table 
    
# What is Total Quantity
select Sum(quantity) Total_Quantity From superstoreorders; 

![Task14](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/45297ab7-effe-4f8a-8d35-5d160d1ca41f)

# What is Total Profit
select Sum(profit) Total_Profit From superstoreorders; 

![task15](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/b68033d0-cd70-4555-9a9d-8d2326286839)

	-- SUM () is used to calculate the total of Numerical value from the column / table
	-- Here We are Calculating the total Sum of profit from the table 

# What is AVG Profit

select Avg(profit) Avg_Profit From superstoreorders; 

	![Task16](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/0326b44f-d1de-4493-8b32-1d51b4a8106b)

    -- AVG () is used to calculate the AVG of Numerical value from the column / table
	-- Here We are Calculating the Avgerage of profit from the table 

# What is AVG Discount

select Avg(Discount) Avg_Discount From superstoreorders; 

	![Task17](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/de28ae05-3709-4d20-a179-bd3cceb6be23)

    -- AVG () is used to calculate the AVG of Numerical value from the column / table
	-- Here We are Calculating the Avgerage of Discount from the table 
    
# How Many country in the table

select count(Distinct Country) Total_Country From superstoreorders; 

![Task18](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/45f9ad50-88f2-4f40-99d9-c11898ac4410)

	-- Count() is an agreegate Method, than returns the count of data/row/Value from the column / table
	-- Here We are counting the unique Country from the table 
    
# Find the is higest Product Sales Name 
select * from superstoreorders 
where Sales = (
				select Max(Sales) from superstoreorders
			   );
      
  ![Task19](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/8af9e496-9dcb-413b-8809-83d50402d15b)
             
	-- We are using the Sub-Query, Sub-Query is a Query inside Query, The Result of outer Query is always dependent on inner Query
	-- Here We are Finding the maximum sales from the table and then extrating the product complete information based on the Maximum Sales. 

# SHow the 3rd Highest Sales
 
select * from superstoreorders 
where Sales = (
				select Sales from superstoreorders
                order by Sales Desc
                Limit 2,1
			   );  
      
  ![Task20](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/94094750-18a5-429c-a182-372337a94a2b)

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


![Task21](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/dbac2773-8bc3-4b0d-b52f-15d5e484071b)

-- Here we are using The aggregate Method for calculating the Total Sales, Total Profit and AVG Profit %
-- Round() : Round() is used to round the decimal values

# Show Top 10 Product by Sales & Quantity

select product_name,
Sum(Sales) As Total_Sales,
Sum(Quantity) As Total_Quantity
from superstoreorders
Group by product_name order by Total_Sales Desc limit 10;


![task22](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/a3ce482b-ab4a-4404-92c9-a1a22f9d802b)

-- Here we are Calculating the total Sum OF Sales & Quantity, and Grouping them By Product Name by Group by Clause
-- We are sorting the sales as descending order
-- Using LIMIT : we are seting rules to show limited no od=f record from the table .

# Show Category by Sales 

select Category,
Sum(Sales) As Total_Sales from superstoreorders
Group by Category order by Total_Sales Desc;


![Task23](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/d741004c-0cea-42f9-b456-d436bed7b359)

-- Here we are Calculating the total Sum of sales, 
-- Group By : Using the gorup by clause , We are grouping the Category
-- Order By : Using Order By we are sorting the Sales in Descending Order( Highest To Lowest)

# Show Yearly Sales

select Year,
Sum(Sales) As Total_Sales from superstoreorders
Group by Year order by Total_Sales Desc;


![Task24](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/c470f7af-91a3-482f-9f66-88651040b33c)

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


![Task24](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/8af30ddd-9e18-4f89-9fa3-1c44b19080f7)

-- Here we are Calculating the Maximum Quantity, 
-- Group By : Using the gorup by clause , We are grouping the product_name
-- Order By : Using Order By we are sorting the Maximum Quantity in Descending Order( Highest To Lowest)
-- Limit : Using limit, we are setting the rule to show only 3 record of table.


# Show 2nd Highest Sales product

select max(sales) from superstoreorders
where sales < (
				select max(sales) from superstoreorders
			   );

      
![Task26](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/064c6885-8c0e-403e-abc6-a9539f8810dd)

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


![Task27](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/46cd5d29-89f7-486b-a707-17f056ce8726)

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

![Task28](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/ee34c14e-939d-48d4-b1cb-3fe1b894c1dc)

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


![Task29](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/e511aaf5-783b-4a37-84aa-9b9b914b5acf)

# Show Country Wise total Sales & Order Quantity 
Select Country,
SUM(Sales) As Total_Sales,
Sum(Quantity) As Total_Quantity
from superstoreOrders
group by Country
order by Total_Sales DESC ;


![Task30](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/08a99c69-2c46-45dd-b3b9-a0573aa60b2b)

# Show Product & Category wise Order Quantity 
Select Product_Name, Category,
Sum(Quantity) As Total_Quantity
from superstoreOrders
group by Product_Name, Category
order by Total_Quantity DESC ;


![Task31](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/b028f857-cf55-45d3-ab42-e90265eaf06a)

# Show Region  & sub_category Wise Order Quantity 
Select Region, sub_Category,
Sum(Quantity) As Total_Quantity
from superstoreOrders
group by Region, sub_Category
order by Total_Quantity DESC ;


![Task31](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/21e31a8d-fcee-43bd-b647-af6bea5ef87d)

# Show top 3 Product in each category By Sales 

Select * from (Select Category, Product_Name, Sales,
		dense_rank() 
		Over(Partition By Category Order By Sales Desc ) as dSales_Rank 
		from  superstoreorders) tbl
where  dSales_Rank <=3;


![Task33](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/c30eac8f-a5b7-4d0d-9f59-d5bf61b188c0)



# List the Top 5 Customer By Highest Order Quantity in each Country  

Select Distinct d_Qty_Rank,  Quantity, Country, Customer_Name  from (
				Select Country, Customer_Name, Quantity,
				dense_rank() 
				Over(Partition By Country Order By Quantity Desc ) as d_Qty_Rank 
				from  superstoreorders
			 ) tbl
where  d_Qty_Rank <=5;


![task34](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/f9a07ed0-ae47-4fee-8bc7-479ee3ef86bd)


# List the Top 5 Customer By Highest Sales revenue in each Region   

Select d_Sales_Rank,  Sales, Region, Customer_Name  from (
				Select *,
				dense_rank() 
				Over(Partition By Region Order By Sales Desc ) as d_Sales_Rank 
				from  superstoreorders
			 ) tbl
where  d_Sales_Rank <=5;


![task35](https://github.com/Official-Vivek-Singh/SampleSuperStore_DataAnalysis_MySQL/assets/129989230/1a7b5445-9fd2-422c-be6b-1dd13b6736fb)

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
