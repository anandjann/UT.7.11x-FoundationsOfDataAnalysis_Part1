#-------------------------------------------Pre Lab 1-----------------------------------------------#
install.packages("SDSFoundations")
library(SDSFoundations)
bikedata<-BikeData

#---------------------------------------- Reflect on the question ------------------------------------------
#1
#a)What is the age of the 7th rider in the dataset?
bikedata[7,]$age

#b)How many of the first 10 riders in the dataset ride daily?
bikedata10 <- bikedata[1:10,]
nrow(bikedata10[bikedata10$cyc_freq == 'Daily',])
#Alternatively you can also retrieve observations as below
nrow(bikedata[1:10,][bikedata10$cyc_freq == 'Daily',])

#c)What is the speed of the first female who cycles less than one time per month (in miles/hour)?
bikedata[bikedata$gender=="F",]$speed[1]


#2
#a)What type of variable is student?
table(bikedata$student)  #Categorical-We conclude that it is categorical and its not converted to class "factor"

#b)What type of variable is cyc_freq?
class(bikedata$cyc_freq) #Categorical

#c)What type of variable is distance?
class(bikedata$speed)


#---------------------------------------- Analyze the data --------------------------------------------------
#1
# Find the number of students in the dataset
table(bikedata$student)

# To create a new dataframe with students
student <-bikedata[bikedata$student==1,]

#2How many variables are in the new data frame "student"? 
length(student)


#3We want to know how often the students ride. What is the most frequently observed response?
table(student$cyc_freq)

#4How is the vector "distance" described in the workspace?
distance <-student$distance

#5How far do students ride on average?
mean(distance)

