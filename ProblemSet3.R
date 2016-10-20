#-------------------------------------------ProbelmSet 3-----------------------------------------------#
rm(list=ls(all=TRUE))
library(SDSFoundations)
acl <- AustinCityLimits
head(acl)



#1a. How many artists in the dataset have 100,000 or more likes on Facebook?
table(acl$Facebook.100k)

#b. Which age group has the highest number of artists that have 100,000 or more likes on Facebook? (Spell out your answer, i.e. twenties, thirties, forties, etc.)
table(acl$Facebook.100k,acl$Age.Group)

#c. For each age group, fill in the proportion of artists who have 100,000 or more likes on Facebook. (Use the appropriate function in R to calculate these, and round to 3 decimal places (i.e. 0.123.)
prop.table(table(acl$Facebook.100k,acl$Age.Group),2)



#2a. To how many possible outcomes can students be assigned?
4*2

#b. What proportion of students in the class received a grade of A? (Round to 2 decimal places.)
grade<- data.frame(cbind(A,B,C,D,F))
rownames(grade)<- as.factor(c('Freshman','Sophomore','Junior','Senior'))
prop.table(colSums(grade))

#c. What proportion of the students were upperclassmen (juniors and seniors)? (Round to 2 decimal places.)
prop.table(rowSums(grade))


#3a. If A and B are independent, what is the value of P(A|B)? (Round to 2 decimal places.)
#A.P(A) will remain , as P(B) cancel out , so its P(A) = 0.15 which is already given

#b. What is the probability of P(B|A)? (Round to 2 decimal places.)
#P(B|A) = P(A and B) /P(A)


#A movie theater conducted a survey to determine the movie preferences of men and women. They asked a total of 130 adults (50 women and 80 men) to choose their favorite movie genre out of four choices: Action, Comedy, Horror, or Romance. The results of their survey are shown below.
#Data
#          Women	  Men
# Action	  12%	    35%
# Comedy	  34%	    25%
# Horror	  30%	    32.50%
# Romance	  24%	    7.50%

#4b What is the probability that a randomly chosen person from the survey prefers Action films? (Report as a proportion rounded to 2 decimal places.)
round(((0.12*50)+(0.35*80))/130,2)

#c. What is P(Action|Women)? (Report as a proportion rounded to 2 decimal places.)
round((0.12*50)/50,2)
