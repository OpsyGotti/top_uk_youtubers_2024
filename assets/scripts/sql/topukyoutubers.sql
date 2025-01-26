
/* 
1. Set the preferred columns
2. Extract channel name from the 'NOMBRE' column.
*/

SELECT 
	CAST(SUBSTRING(NOMBRE, 1,CHARINDEX('@', NOMBRE) -1) AS VARCHAR(100)) AS channel_name, 
	total_subscribers,
	total_views,
	total_videos
FROM youtube_data;


/*

# Data quality tests

1. The data needs to be 100 records of Youtube channels (row count test)
2. The data needs 4 fields (column count test)
3. The channel name column must be string format, and the other columns must be numerical data types (data type check)
4. Each record must be unique in the dataset (duplicate count check)


Row count - 100
Column count - 4


Data types

channel_name = VARCHAR
total_subscribers = INTEGER
total_views = INTEGER
total_videos =  INTEGER

Duplicate count = 0


*/
/*
# 1. Create a view to store the transformed data
# 2. Cast the extracted channel name as VARCHAR(100) and elect the required columns from the top_uk_youtubers_2024 SQL table 
*/
CREATE VIEW view_Top100_uk_youtubers_2024 as

SELECT
	Channel,
	Videos,
	Subscribers,
	Views
FROM
	UK_Top100_YoutubeChannels;

-- 1. 
CREATE VIEW view_uk_youtubers_2024  AS


-- 2.
SELECT 
	CAST(SUBSTRING(NOMBRE, 1,CHARINDEX('@', NOMBRE) -1) AS VARCHAR(100)) AS channel_name,
	total_subscribers,
	total_views,
	total_videos
FROM youtube_data;

/*

# 1. Row count check

The data needs to be 100 records of Youtube channels (row count test)

*/

SELECT 
	COUNT(*) as no_of_rows
FROM 
	youtube_data

/*
-- 2. Column count check

Confirm the total number of columns/fields in the SQL view
*/

SELECT 
	COUNT(*) AS column_count
FROM 
	INFORMATION_SCHEMA.COLUMNS
WHERE 
	TABLE_NAME = 'view_Top100_uk_youtubers_2024';


-- 2. Column count check
/*

Confirm the total number of columns/fields in the SQL view
*/

SELECT 
	COUNT(*) AS column_count
FROM 
	INFORMATION_SCHEMA.COLUMNS
WHERE 
	TABLE_NAME = 'view_uk_youtubers_2024';


-- 3. Data type check
/* 
Check the data types of each column from the view the view by checking the INFORMATION scheme view
*/

SELECT
	COLUMN_NAME,
	DATA_TYPE
FROM
	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'view_uk_youtubers_2024';


-- 4. Duplicate records check
/*

Each record must be unique in the dataset (duplicate count check)

*/
SELECT
	Channel,
	COUNT(*) as duplicate_count
FROM 
	view_Top100_uk_youtubers_2024
GROUP BY
	Channel
HAVING 
	COUNT(*) > 1


	
/*

# Duplicate records check

Each record must be unique in the dataset (duplicate count check)

*/
SELECT
	channel_name,
	COUNT(*) as duplicate_count
FROM 
	view_uk_youtubers_2024
GROUP BY
	channel_name
HAVING 
	COUNT(*) > 1;

/* 

1. Define the variables
2. Create a CTE that rounds the average views per video
3. Select appropriate columns for the analysis
4. Filter the results by the Youtube channels with the highest subsriber bases
5. Order by net_profit (from highest to lowest)

*/

-- 1.

DECLARE @conversionRate FLOAT = 0.02;				-- The conversion rate @2%
DECLARE @productCost MONEY = 5.0;					-- The product cost @ $5
DECLARE @campaignCost MONEY = 50000.0;			-- The campaign cost @ $50,000.00


-- 2.

WITH ChannelData AS (
	SELECT 
		Channel,
		Views,
		Videos,
		round((cast(Views as float)/ Videos), -4) as rounded_avg_views_per_video
	FROM view_Top100_uk_youtubers_2024

)


-- 3. 

SELECT 
	Channel,
	rounded_avg_views_per_video,
	(rounded_avg_views_per_video * @conversionRate) AS potential_units_sold_per_video,
	(rounded_avg_views_per_video * @conversionRate * @productCost) AS potential_revenue_per_video,
	(rounded_avg_views_per_video * @conversionRate * @productCost) - @campaignCost AS net_profit

FROM ChannelData

-- 4. 
WHERE Channel IN ('Peppa Pig - Official Channel', 'NoCopyrightSounds', 'DanTDM', 'Dan Rhodes', 'Coldplay')


-- 5. 

ORDER BY
	net_profit desc




SELECT * FROM view_uk_youtubers_2024 order by 4 desc