#------------------------------------------- Lab 4-----------------------------------------------#
rm(list=ls(all=TRUE))
library(SDSFoundations)
acl <- AustinCityLimits

#---------------------------------------- Analyze the Data ------------------------------------------

#1) How many male artists won a Grammy?
nrow(acl[acl$Gender=='M' & acl$Grammy=='Y' ,])

#2) How many male artists did not win a Grammy?
nrow(acl[acl$Gender=='M' & acl$Grammy=='N' ,])

#3) Which genre had the greatest number of Grammy wins?
table(acl[acl$Grammy=='Y' ,]$Genre)

#4) What is the probability that a randomly selected artist was a Grammy winner? (Report as a proportion rounded to three decimal places)
acl_M <- acl[acl$Gender=='M',]
prop.table(table(acl_M$Grammy))


#5) To determine the probability of winning a Grammy if the artist was a singer-songwriter, you would divide _______ by ________. (Enter numerical values.)
acl_M <- acl[acl$Gender=='M',]
twoway <- table(acl_M$Grammy,acl_M$Genre)
twoway


#6) To determine the probability that a randomly-selected Grammy winner was a singer-songwriter, you would divide ________ by ________. (Enter numerical values.)
acl_M <- acl[acl$Gender=='M',]
twoway <- table(acl_M$Grammy,acl_M$Genre)
prop.table(twoway,2)




