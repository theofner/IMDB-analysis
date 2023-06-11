# IMDB Analysis

## Communication Protocols

* Slack was the primary method of communication between team members when outside of class.
* Project tasks and deadlines were assigned to team members using Asana to keep everyone on track. 

![image](https://user-images.githubusercontent.com/104707395/230266250-4f55ad4b-fcb5-4b04-82e0-9a882b5aeea3.png)


## Overview of the Project

* This is a collaborative project between Theodore Ofner, Kyle Brumbaugh, Andrew Phillbeck, and Seth Bogue. The goal of this project is to create a machine learning model that is capable of predicting IMDB movie ratings based on variables present in a large dataset. We chose this topic based on the scope, availability, and quality of the IMDB datasets.  

## Outline of the Project

### Data Source and Data Cleaning

* Data was sourced from IMDB. Link to data here: https://datasets.imdbws.com
* Data was cleaned to drop all null values, select only movies, and drop columns not relevant for our analysis. We focused our analysis on genre, rating, votes, release year, gross revenue, and region of production. 

![image](https://user-images.githubusercontent.com/104707395/230266395-b865133b-5edc-4efc-8232-cfe861df9a9d.png)

![image](https://user-images.githubusercontent.com/104707395/230266469-3c0b532e-f6ef-4b11-8421-c8937dad4af9.png)

![image](https://user-images.githubusercontent.com/104707395/230266555-7a3e2d20-242d-4f0c-9fa6-1bd60ca4f73d.png)

### Database 

* A database diagram was created to setup pgAdmin tables to house the datasets.

![image](https://user-images.githubusercontent.com/104707395/230267089-33571b57-4021-4ea6-b9e2-8423ad1ed6c5.png)

* Data was imported into pgAdmin and uploaded to Amazon RDS.

![image](https://user-images.githubusercontent.com/104707395/230266882-ab8fe9ea-b2a7-4525-a9fc-42dc7a96a003.png)

* Data was queried using psycopg in Google Colab and datasets were joined for subsequent machine learning.

### Machine Learning Model

* For the analysis, we were interested in looking for differences in ratings between genres and ratings between regions. We were also interested in evaluating whether movie length effects ratings. We performed a K-means clustering algorithm to identify any clusters that exist in the dataset. Based on the elbow curve, we determined that 3 - 4 clusters best fit the dataset. 

![image](https://user-images.githubusercontent.com/104707395/230267827-5b428520-8ee9-47c4-b224-64ace8cecfdf.png)

![image](https://user-images.githubusercontent.com/104707395/230267863-1cacceec-e9ae-4f61-90ba-388f12e54dc4.png)

![image](https://user-images.githubusercontent.com/104707395/230267882-388c18b0-9f9a-43f5-85c3-4f62f5c71805.png)

* The clusters suggest that movie ratings increase with decreasing runtime and increasing number of votes, although there was not a strong relationship between these variables. The results of our analysis indicate that it is inherently difficult to produce highly rated movies. Further large-scale analysis of these data may reveal significant relationships between variables that we did not include in our analysis.  

## Presentation

* We created a presentation covering the project in more detail on Google Slides. Follow the link to view the presentation: https://docs.google.com/presentation/d/1hDrwh7ZS7TsVLIp5B562nspIUHgWlTVNdlucS_cfZFo/edit?usp=sharing

## Tableau Dashboard

* An interactive Tableau dashboard was created for this project that displays the average movie rating by country, the number of movies produced by genre by year, the average rating of movies, number of actors, number of movies, number of votes, and average lenth of movies by genre. The Tableau dashboard can be viewed at the following link: https://public.tableau.com/views/Final_Project_IMDB_Dashboard/Dashboard2?:language=en-US&:display_count=n&:origin=viz_share_link
