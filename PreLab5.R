#------------------------------------------- Prelab 5-----------------------------------------------#
rm(list=ls(all=TRUE))
library(SDSFoundations)
WR <- WorldRecords

#---------------------------------------- Analyze the Data ------------------------------------------

#1
#a) How many different types of events (e.g. "Mens 100m," "Womens shotput," etc.) are represented in the dataset?
length(table(WR$Event))

#b) In what year did Usain Bolt first break the world record for the men's 100m dash?
WR_100m_UB <- WR[WR$Event=="Mens 100m" & WR$Athlete == "Usain Bolt",]
WR_100m_UB

#c) Who was the first woman to break the women's 1 mile world record with a time of less than 260 seconds?
WR_mile <- WR[WR$Event=="Womens Mile" & WR$Record <260,]
WR_mile$Athlete[1]


#1
#a). How many records are in the menshot data frame?
#Subset the data
menshot <- WR[WR$Event=='Mens Shotput',]

#b). How many records are in the womenshot data frame?

#Subset the data
womenshot <- WR[WR$Event=='Womens Shotput',] 

#2a. Is a linear model appropriate for the men's shotput data?
#Create scatterplots
plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)




#Yes

#b) Is a linear model appropriate for the women's shotput data?
#Yes

#3  What is the equation for the linear model that predicts the World Record shotput distance for men?
#a. record distance = ________ + (________ * year)

#b
#Run linear models
linFit(menshot$Year, menshot$Record)

#4 What is the equation for the linear model that predicts the World Record shotput distance for women?
#a record distance = ________ + ( ________ * year)
linFit(womenshot$Year,womenshot$Record)


