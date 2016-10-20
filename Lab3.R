#-------------------------------------------Lab 3-----------------------------------------------#
rm(list=ls(all=TRUE)) #To clean the workspace
#install.packages("SDSFoundations")
library(SDSFoundations)

bull <- BullRiders
head(bull)

#---------------------------------------- Analyze the Data ------------------------------------------

#1
#a. What is the shape of the Earnings distribution for 2012?

new_bull12 <- bull[bull$Events12 > 1,]
hist(new_bull12$Earnings12)

#b. What was the average amount earned by a bull rider? (Choose the appropriate measure of center; report without a $ sign and round to the nearest whole number.)
round(median(new_bull12$Earnings12))

#c. What was the highest amount earned by a bull rider? (Report without a $ sign and round to the nearest whole number.)
round(new_bull12[which.max(new_bull12$Earnings12),])


#2
#a Does the scatterplot show a linear relationship? between Earnings and Ride percentage

plot(new_bull12$RidePer12,new_bull12$Earnings12)


#b. What is the correlation of Earnings with Ride Percentage for 2012? (round to three decimal places)
round(cor(new_bull12$Earnings12,new_bull12$RidePer12),3)



#3
#a Does the scatterplot show a linear relationship? between Earnings and Cup points

plot(new_bull12$CupPoints12,new_bull12$Earnings12)


#b. What is the correlation of Earnings with Cup points for 2012? (round to three decimal places)
round(cor(new_bull12$Earnings12,new_bull12$CupPoints12),3)


#4
#a. The extreme earnings data point belonged to the rider that came in ______ Place in 2012. (Please spell your answer; do not use numerals.)

new_bull12[which(new_bull12$Earnings12 == max(new_bull12$Earnings12)),]$Rank12

#outlier detection
nooutlier <- new_bull12[new_bull12$Earnings12 < 1000000 ,] 

round(cor(nooutlier$Earnings12,nooutlier$RidePer12),3)


round(cor(nooutlier$Earnings12,nooutlier$CupPoints12),3)


#Cor matrix
vars <- c("Earnings12", "RidePer12", "CupPoints12")
cor(new_bull12[,vars])


  