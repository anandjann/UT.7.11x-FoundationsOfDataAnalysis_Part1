#-------------------------------------------ProblemSet 1-----------------------------------------------#
rm(list=ls(all=TRUE)) #To clean the workspace
install.packages("SDSFoundations")
library(SDSFoundations)
animaldata<-AnimalData

#Question1

#1
#a. What was the most common way that dogs arrived in the shelter? (as defined by the "Intake.Type" variable)
table(animaldata[animaldata$Animal.Type=="Dog",]$Intake.Type)

#b. What proportion of dogs were brought to the shelter as an owner surrender? (Round to 3 decimal places.)
noofdogs <- nrow(animaldata[animaldata$Animal.Type=="Dog",])
dogsurrender <- nrow(animaldata[animaldata$Animal.Type=="Dog" & animaldata$Intake.Type =="Owner Surrender",])
round(dogsurrender/noofdogs,3)

#c. Of the dogs that were brought to the shelter as an owner surrender, how many were returned to their owner?
nrow(animaldata[animaldata$Animal.Type=="Dog" & animaldata$Intake.Type =="Owner Surrender" & animaldata$Outcome.Type != "Return to Owner",])

#d What was the mean number of days that the dogs referenced in Question 1c spent at the shelter before being returned to their owner? (Round to 1 decimal place.)
round(mean(animaldata[animaldata$Animal.Type=="Dog" & animaldata$Intake.Type =="Owner Surrender" & animaldata$Outcome.Type == "Return to Owner",]$Days.Shelter),1)

#Question2


#2

