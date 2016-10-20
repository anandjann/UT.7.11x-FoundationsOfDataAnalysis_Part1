#-------------------------------------------Pre Lab 3-----------------------------------------------#
rm(list=ls(all=TRUE))
library(SDSFoundations)
bull <- BullRiders

#---------------------------------------- Reflect on the question ------------------------------------------
#1
#a How many observations are in the dataset?
nrow(bull)

#b. How many of the first 10 riders in the dataset have been pro for 10 years or more?
sum(bull[1:10,]$YearsPro>=10)

#c. Of the top 15 riders so far in 2015, how many rides were completed by the rider with the fewest buck-outs in 2014?

bull[which.min(bull[1:15,]$BuckOuts14),]$Rides14


#---------------------------------------- Analyze the data -------------------------------------------------

#Create a subset of the data which contains only those riders that have participated in at least one event in 2013.
new_bull <- bull[bull$Events13  > 0 ,]

# Visualize and describe the first variable of interest
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)

# Visualize and describe the second variable of interest
hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)

# Create a scatterplot
plot(new_bull$Rides13,new_bull$Top10_13)

# Add line of best fit
abline(lm(new_bull$Top10_13~new_bull$Rides13))

# Calculate the correlation coefficient
cor(new_bull$Rides13,new_bull$Top10_13)

# Create a correlation matrix 
vars <- c("Top10_13", "Rides13")
cor(new_bull[,vars])
