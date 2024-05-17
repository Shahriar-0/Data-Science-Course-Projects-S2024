# Data-Science-Course-Projects-S2024

- [Data-Science-Course-Projects-S2024](#data-science-course-projects-s2024)
  - [Intro](#intro)
  - [Assignment 0: Web Scraping and Introductory Data Analysis](#assignment-0-web-scraping-and-introductory-data-analysis)
  - [Assignment 1: Statistics Analysis Tools](#assignment-1-statistics-analysis-tools)
  - [Assignment 2: Investigating Open-Ended Questions](#assignment-2-investigating-open-ended-questions)
  - [Assignment 3: Spotify Dataset Analysis](#assignment-3-spotify-dataset-analysis)
  - [Assignment 4: Loss Functions and Regression](#assignment-4-loss-functions-and-regression)
  - [Assignment 5: Feature Engineering Techniques](#assignment-5-feature-engineering-techniques)
  - [Assignment 6: Dimensionality Reduction and Unsupervised Learning](#assignment-6-dimensionality-reduction-and-unsupervised-learning)
  - [Project](#project)
    - [Phase 1: Data Collection](#phase-1-data-collection)
    - [Phase 2: Data Cleaning](#phase-2-data-cleaning)

## Intro

This repository contains the assignments for the Data Science course at the University of Tehran. The assignments are completed by the group of students in the course and are used to demonstrate the skills and knowledge they have gained throughout the course. They are completed using the python programming language and are focused on data analysis, visualization, and machine learning. The assignments are completed using real-world data sets and are designed to give students hands-on experience with the tools and techniques used in data science. Apart from the assignments, the repository also contains the final project for the course, which is a group project that involves working on a real-world data science problem from start to finish. In the final project we were supposed to gather data, clean it, analyze it, and build a machine learning model to solve a specific problem. 

## Assignment 0: Web Scraping and Introductory Data Analysis

In this assignment, we were tasked with scraping data from a website and performing some basic data analysis on it. The website we scraped was [Etherscan](https://etherscan.io/txs) and the data we scraped was the transaction history of the Ethereum blockchain. We used the `requests` and `BeautifulSoup` libraries to scrape the data and then used `pandas` and `matplotlib` to perform some basic data analysis on it. Then we analyze different sampling methods and their effects on the data analysis process. 

## Assignment 1: Statistics Analysis Tools

In this assignment, we were tasked with using different statistical analysis tools. First, we used monte carlo simulation to estimate the value of pi and outcome of a mensch game. Then we analyzed the Central Limit Theorem (CLT) and its effects on the distribution of sample means. Finally, we implemented two different hypothesis tests. The first was a for outcomes of flipping a coin and the second was for checking if the GPA of students is affected by the amount of job they have, this one is based on a real-world dataset.

## Assignment 2: Investigating Open-Ended Questions

In this assignment, we were tasked with investigating open-ended questions. For this purpose we were given two datasets, one containing the information about passengers of the sunken `RMS Luistania` and the other containing the information about the salaries statistics of scientists. We used these datasets to answer some open-ended questions.

## Assignment 3: Spotify Dataset Analysis

In this assignment, we were tasked with analyzing a dataset containing information about songs on Spotify. We used this dataset to gain some interesting insights about the songs and their features.For this part we used the `pyspark` library to analyze the dataset. We also used the `matplotlib` and `seaborn` libraries to visualize the data.

## Assignment 4: Loss Functions and Regression

In this assignment, we were tasked with implementing some basic loss functions and using them to train a simple linear regression model. We implemented the Mean Squared Error (MSE) and Mean Absolute Error (MAE) loss functions and used them to train a simple linear regression model on a dataset containing information about house prices. We also implemented the R^2 score to evaluate the performance of the model. The dataset used in this assignment is the `Diabetes` dataset from the `sklearn` library. We also used Ordinary Least Squares (OLS) to train the model and compared the results with the results obtained using the loss functions we implemented.

## Assignment 5: Feature Engineering Techniques

In this assignment, we were tasked with implementing some feature engineering techniques and using them to train a simple linear regression model. The given dataset contains information about outcome of shoots in football matches. Then we were tasked with regressing the price and horsepower of cars with a different dataset. Then we trained a Multivariate and a K-Fold model to do the regression.

## Assignment 6: Dimensionality Reduction and Unsupervised Learning

In this assignment, we were tasked with implementing some dimensionality reduction techniques and using them to train a simple K-Means and DBSCAN clustering model. We implemented the Principal Component Analysis (PCA) dimensionality reduction technique and used it to reduce the dimensionality of a dataset containing information about the diabetics data. We then used the reduced dataset to train a K-Means and DBSCAN clustering model to cluster the songs based on their features.

## Project

### Phase 1: Data Collection

For this phase we chose to scrape [We Buy Car](https://www.webuycars.co.za/buy-a-car) website to gather data about the cars they have for sale. The gathered data includes the car's make, model, year, price, and much more. 

### Phase 2: Data Cleaning

In this phase we cleaned the data we gathered in the previous phase. We removed any duplicates, missing values, and outliers. We also converted the data into a format that is suitable for analysis. We also performed some exploratory data analysis to gain some insights about the data.
