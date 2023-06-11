# Notes for the Presentation

## Selected Topic

We are looking at an IMDB database of ratings for films and movies, in particular the subset of that database which contains data for movies. We intend to analyze this data to look for trends in rating and gross revenue values for feature films.

## Description of the Data

The dataset we are using is the publicly available imdb dataset. It is a network of tables keyed off of a unique identiying code for each film. The dataset contains information for films, tv shows, short films, online videos and more, as IMDB is a publicly maintained database in the style of Wikipedia. As such, there is much data cleaning to be done before we can dive into our analysis. Of particular interest to us are the genre, rating, votes, release year, gross revenue, and region of production dimensions of the dataset.

## Questions we will examine

We are looking to examine the factors which influence rating and if possible gross revenue, all though the gross revenue data is less reliable than the ratings. Some analysese and visualizations we intend to examine:

- Do overall ratings change over time?
- Are there significant differences in rating between genres?
- Does runtime effect rating?
- Can k-means clustering identify any meaningful clustering in the data? How do we interpret such clusters if so?