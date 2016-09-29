#-------------------------------------------Pre Lab 2-----------------------------------------------#
rm(list=ls(all=TRUE)) #To clean the workspace
install.packages("SDSFoundations")
library(SDSFoundations)
animaldata<-AnimalData


#---------------------------------------- Analyze the Data ------------------------------------------

#1
#a. How many adult dogs are in the shelter?
nrow(animaldata[animaldata$Animal.Type=="Dog" & animaldata$Age.Intake >= 1,])

#b. How many adult cats are in the shelter?
nrow(animaldata[animaldata$Animal.Type=="Cat" & animaldata$Age.Intake >= 1,])

#2
#a. What is the shape of the distribution of weight for adult dogs?
hist(animaldata[animaldata$Animal.Type=="Dog" & animaldata$Age.Intake >= 1,]$Weight)

#b. What is the shape of the distribution of weight for adult cats?
hist(animaldata[animaldata$Animal.Type=="Cat" & animaldata$Age.Intake >= 1,]$Weight)


#3
#bAverage adult cat weight in pounds (rounded to one decimal place)
round(mean(animaldata[animaldata$Animal.Type=="Cat" & animaldata$Age.Intake >= 1,]$Weight),1)

#4
# What is the standard deviation for the weight of the adult cats? Round to two decimal places.
round(sd(animaldata[animaldata$Animal.Type=="Cat" & animaldata$Age.Intake >= 1,]$Weight),1)


#5
#What is the z-score of a 13 pound adult cat? Round to one decimal point.
x <- 13
avg <- mean(animaldata[animaldata$Animal.Type=="Cat" & animaldata$Age.Intake >= 1,]$Weight)
std <- sd(animaldata[animaldata$Animal.Type=="Cat" & animaldata$Age.Intake >= 1,]$Weight)
round((x - avg)/std,1)

#7
#What proportion of adult cats weigh more than 13 pounds, according to your data? 
#We have already calculated average ,standard deviation in previous problem
zscr <- round((x - avg)/std,1)
round((1-pnorm(zscr)),3)
  
#8
#a. What quartile would contain a 13-pound adult dog?
fivenum(animaldata[animaldata$Animal.Type=="Dog" & animaldata$Age.Intake >= 1,]$Weight)

#b. What percentage of adult dogs in the shelter weigh more than 13 pounds?
adultdog <- nrow(animaldata[animaldata$Animal.Type=="Dog" & animaldata$Age.Intake >= 1,])
adultdoggrt13 <- nrow(animaldata[animaldata$Animal.Type=="Dog" & animaldata$Age.Intake >= 1 & animaldata$Weight > 13,])
adultdoggrt13/adultdog

