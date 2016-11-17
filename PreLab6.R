#-------------------------------------------Pre Lab 6-----------------------------------------------#
#To remove everything from the environment
rm(list=ls(all=TRUE))
library(SDSFoundations)
world <- WorldBankData 
#For the first 6 observations
head(world)

#---------------------------------------- Reflect on the question ------------------------------------------
#1
#a) What is the first "Low Income" country in the dataset?
world[world$IncomeGroup == "Low income",][1,]

#b) What was the rural population of Aruba in 1970? (Report without commas)
world[world$Country =="Aruba" & world$year == "1970",][7]

#c) When was the first year Australia had data on the number of mobile device subscriptions? (Subscriptions more than 0)
world[world$Country =="Australia" & world$mobile.users>0,][c(3,13)]




# Subset data for just the United States and name the new data frame "us"
us <- world[world$Country.Code == "USA",]

# Select the years from 1990 and name the new data frame "us_select"
us_select <- us[us$year >= 1990, ]

# Create a new variable in our datset called internet.mil to make the number of users more interpretable (into millions)
us_select$internet.mil <- us_select$internet.users / 1000000

# Create a new variable in our dataset called time that represents "years since 1990"
us_select$time <- us_select$year - 1990

# Select the first 10 years (from 1990 to 1999) and name the new data frame "us_select_10"
us_select_10 <- us_select[us_select$time < 10,]

# Use a function to fit an exponential and logistic model for 1990-1999
expFit(us_select_10$time, us_select_10$internet.mil)
logisticFit(us_select_10$time, us_select_10$internet.mil)

# Based on the prior model parameters, predict the number of internet users in 2006

l <- logisticFitPred(us_select$time, us_select$internet.mil, 16)


#---------------------------------------- Analyze the Data ------------------------------------------

#1) In both of these models, what does Year 0 correspond to?
#A.1990

#2) Which functions will you use to fit exponential and logistic models to the data?
#A.expFit() and logisticFit()

#3) What will be the value of "us_select$time" for 2006?
#A. 16

#4) In 1990, the number of internet users in the US was 1,958,863. What will be the value of "us_select$internet.mil" for 1990 after this line of code is run?

# Create a new variable in our dataset called internet.mil to make the number of users more interpretable (into millions)
us_select$internet.mil <- us_select$internet.users / 1000000
#A. 1.958863


#What was the actual number of internet users (in millions) in the United States in 2006? (Round to 1 decimal place)
expFitPred(us_select_10$time, us_select_10$internet.mil, 16)

#What was the actual number of internet users (in millions) in the United States in 2006? (Round to 1 decimal place)
expFitPred(us_select$time, us_select$internet.mil, 16)
