#-------------------------------------------ProblemSet 2-----------------------------------------------#
rm(list=ls(all=TRUE)) #To clean the workspace
#install.packages("SDSFoundations")
library(SDSFoundations)

bull <- BullRiders
head(bull)

#---------------------------------------- Analyze the Data ------------------------------------------
#Subset the dataset for riders that had at least 1 ride in the 2014 season
new_bull14 <- bull[bull$Rides14 > 1,]

#Create a new variable or vector for the average number of rides per event for each bull rider in the new_bull dataset
RidesPerEvent14 <- new_bull14$Rides14/new_bull14$Events14

#Make a histogram of your "rides per event" variable and find the five-number summary for your "rides per event" variable.
hist(RidesPerEvent14)
fn <- round(fivenum((RidesPerEvent14)),2)

#1
#a What is the minimum value? (Round to 2 decimal places.)
fn[1]

#b. What is the median?
fn[3]

#c. What is the maximum value? (Round to 2 decimal places.)
fn[5]


plot(RidesPerEvent14,new_bull14$Rank14)

plot(new_bull14$Rank14,RidesPerEvent14)

round(cor(new_bull14$Rank14,RidesPerEvent14),3)


#Exam
MinutesSpentStudying <- c(30,45,180,95,130,140,30,80,60,110,0,80)
ExamGrade <- c(74,68,87,90,94,84,92,88,82,93,65,90)
round(cor(MinutesSpentStudying,ExamGrade),3)

#Subsetting
exam <- data.frame(cbind(MinutesSpentStudying,ExamGrade))
head(exam)
exam1 <- exam[exam$MinutesSpentStudying < 50 ,]
exam1[which.max(exam1$ExamGrade),]$ExamGrade

#Removing outlier
exam1 <- exam[-9,]


