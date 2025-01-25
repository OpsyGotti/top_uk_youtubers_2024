# Data Portflio: Excel to Power BI

![Excel_to_PowerBI](assets/images/kaggle_to_powerbi.gif)



# Table of Contents

- [Objective](#objective)
- [Data Source](#data-source)
- [Stages](#stages)
- [Design](#design)
  - [Mockup](#mockup)
  - [Tools](#tools)
- [Development](#development)
  - [Pseudocode](pseudocode)
  - [Data Exploration](data-exploration)
  - [Data Cleaning](#datacleaning)
  - [Transform the Data](#tranform-the-Data)
  - [Create the SQL View](create-the-sql-view)
- [Testing](#testing)
  -[Data Quality Tests](#data-quality-tests)
- [Visualization](#visualization)
  -[Results](#results)
  -[DAX Measures](#dax-measures)
- [Analysis](#analysis)
  -[Findings](#findings)
  -[Validation](#validation)
  -[Discovery](#discovery)
- [Recommendation](#recommendations)
  -[Potential ROI](#potential-courses-of-action)
- [Conclusion](#conclusion)


# Objectives

- What is the primary challenge?

The Head of Marketing aims to identify the top YouTubers of 2024 to plan effective marketing campaigns for the year.


What is the best approach?

- What data is needed to achieve our objective?

We need data on the top UK YouTubers in 2024 that includes their 
- channel names
- total subscribers
- total views
- total videos uploaded

- Where is the data coming from? 
The data is sourced from Kaggle (an Excel extract), [see here to find it.](https://www.kaggle.com/datasets/anubhavbharti/top-100-youtube-channels-2024-12-countries?select=UK_Top100_YoutubeChannels.csv)

# Stages

- Design
- Developement
- Testing
- Analysis 
 



![random_example](assets/images/PowerBiDashboard.png)



```sql

SeLECT 
	*
FROM 
	youtube_data_from_python;

SeLECT 
	NOMBRE,
	total_subscribers,
	total_views,
	total_videos
FROM 
	youtube_data_from_python;
```

 | Col1 | Col2 | Col3|
 | ---|---|---|
 |Dan   |Foster|£5.00|	
