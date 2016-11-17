#------------------------------------------- Lab 6-----------------------------------------------#
rm(list=ls(all=TRUE))
library(SDSFoundations)

world <- WorldBankData 
#For the first 6 observations
head(world)

#---------------------------------------- Analyze the Data ------------------------------------------

#1a) Exponential growth model for Denmark:
denmark <- world[world$Country =="Denmark",]
denmark$prop <- denmark$internet.users/denmark$population
denmark <- denmark[denmark$year>=1990,]
expFit(denmark$year,denmark$prop)
logisticFit(denmark$year,denmark$prop)
