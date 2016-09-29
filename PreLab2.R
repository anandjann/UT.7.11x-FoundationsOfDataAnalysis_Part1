#-------------------------------------------Pre Lab 2-----------------------------------------------#
rm(list=ls(all=TRUE)) #To clean the workspace
install.packages("SDSFoundations")
library(SDSFoundations)
animaldata<-AnimalData


#---------------------------------------- Reflect on the question ------------------------------------------

#1
#a.How many variables are in this dataset?
dim(animaldata) #It will ouput Number of Observations by Number of Variables

#b How many of the first 10 animals in the dataset were adopted?
sum(animaldata[1:10,]$Outcome.Type=="Adoption")

#c. Was the first owner-surrendered animal in the dataset neutered?
animaldata[animaldata$Intake.Type=="Owner Surrender",][1,]$Neutered.Status

#---------------------------------------- Analyze the data --------------------------------------------------

#Generates a frequency table
table(animaldata$Outcome.Type)

#subsetting the adoption animals
adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]

#Days.Shelter vector 
daystoadopt <- adopted$Days.Shelter

#Visualize and describe this variable
hist(daystoadopt)
fivenum(daystoadopt)
mean(daystoadopt)
sd(daystoadopt)
#animal that took the longest to be adopted
which(animaldata$Days.Shelter==max(daystoadopt))

#1
#How would you describe the shape of the distribution of daystoadopt?
hist(daystoadopt)

#3
#a Center
median(daystoadopt)

#b Spread
IQR<-fivenum(daystoadopt)
IQR[4]-IQR[2]

#4
#aHow many days was this animal in the shelter?
animaldata[which(animaldata$Days.Shelter==max(daystoadopt)),]$Days.Shelter

#bWhat was the z-score for this particular animal? Round to the nearest TWO decimal places.
x <- animaldata[which(animaldata$Days.Shelter==max(daystoadopt)),]$Days.Shelter
(x-mean(daystoadopt))/sd(daystoadopt)
  