#-------------------------------------------Lab 1-----------------------------------------------#
#Initial setup
install.packages("SDSFoundations")
library(SDSFoundations)
bikedata<-BikeData

#---------------------------------------- Reflect on the question ------------------------------------------
#1 In this example, what is the new name for "BikeData?" bike <- BikeData
#answer - bike

#2In this example, which variable is being used to identify the cases that will be included in a new dataframe called "males?" males <- bike [bike$gender == 'M',]
#answer - gender

#3In this example, a vector called "male_times" will include a string of values from which dataframe? male_times <- males$time
#answer - males

#4Assuming we have run the lines of code from the previous questions, if we want to find the mean ride time for the males, what should we place in the parentheses? mean( )
#answer - male_times


#---------------------------------------- Analyze the data --------------------------------------------------
#1
# How many daily riders are in the dataset?
table(bikedata$cyc_freq)

#2
#How many of the daily riders are male?
nrow(bikedata[bikedata$gender=="M" & bikedata$cyc_freq == "Daily",])

#3
#What is the average age of daily riders? (Round to 1 decimal place.) . We can further cut the code into pieces and execute the code accordingly
round(mean(bikedata[bikedata$cyc_freq=="Daily",]$age),1)


#4
#What is the average age of the female daily riders? (Round to 1 decimal place.)
round(mean(bikedata[bikedata$cyc_freq=="Daily" & bikedata$gender == 'F',]$age),1)

#5
#What is the average age of the male daily riders?
round(mean(bikedata[bikedata$cyc_freq=="Daily" & bikedata$gender == 'M',]$age),1)

#6
#How many daily male riders are age 30 or older?
thirty <- bikedata[bikedata$age >= 30 & bikedata$gender == 'M' & bikedata$cyc_freq=="Daily" ,]
nrow(thirty)
