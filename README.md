# Data Portflio: Excel to Power BI

![Excel_to_PowerBI](assets/images/kaggle_to_powerbi.gif)



# Table of Contents

- [Objective](#objective)
  -[User Story](#user-story)
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


# Objective

- What is the primary challenge?

The Head of Marketing aims to identify the top YouTubers of 2024 to plan effective marketing campaigns for the year.

- What is the best approach?

To build a dashboard that delivers insights into the top UK YouTubers in 2024, including their

- total views 
- subscribers
- total number of videos
- metrics for engagement
  
This will assist the marketing team in choosing which YouTubers to work with on their campaigns.

## User Story

As the Head of Marketing, I want to use a dashboard that analyses YouTube channel data in the UK .

This dashboard should allow me to identify the top performing channels based on metrics like subscriber base and average views.

With this information, I can make more informed decisions about which Youtubers are right to collaborate with, and therefore maximize how effective each marketing campaign is.

# Data Source

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
 
# Design

## Dashboard requirements

- What should the dashboard provide based on the specifications provided?
  
To determine what the dashboard should include, we first need to identify the key questions it needs to address:

1. Who are the top 10 YouTubers with the most subscribers?
2. Which 3 channels have uploaded the most videos?
3. Which 3 channels have the most views?
4. Which 3 channels have the highest average views per video?
5. Which 3 channels have the highest views per subscriber ratio?
6. Which 3 channels have the highest subscriber engagement rate per video uploaded?

For the time being, these are some of the questions we must address; but, as our analysis progresses, this may change.

## Dashboard mockup

- What the dashboard will look like?

The following data visuals will be most appropriate in providing solutions to the requirements:

1. Table
2. Treemap
3. Scorecards
4. Horizontal bar chart


![random_example](assets/images/PowerBiDashboard.png)

## Tools

 | Tool| Purpose|
 | ---|---|
 | Excel | Exploring the data |
 | SQL Server | Cleaning, testing and analyzing the data |
 | Power BI | Visualizing the data via interactive dashboards |
 | GitHub | Hosting the project documentation and version control |
 | Mokkup AI | Designing the wireframe/mockup of the dashboard |


# Development

## Pseudocode

- 
  

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
