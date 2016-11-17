#------------------------------------------- Lab 5-----------------------------------------------#
rm(list=ls(all=TRUE))
library(SDSFoundations)
WR <- WorldRecords

#---------------------------------------- Analyze the Data ------------------------------------------

#1 Which scatterplot shows a stronger linear relationship between World Record times in the Mile and Year:

menMile <- WR[WR$Event=='Mens Mile',]
womenMile <-WR[WR$Event=='Womens Mile',]

# Create scatterplots
plot(menMile$Year, menMile$Record, main="Mens
     Mile World Records", xlab="Year", ylab="World Record Distance (m)", pch=16)
plot(womenMile$Year, womenMile$Record, main="Womens
     Mile World Records", xlab="Year", ylab="World Record Distance (m)", pch=16)


#2.
#Run linear models
linFit(menMile$Year, menMile$Record)


#3 On average, how many seconds do women trim off the world record time in the Mile each year? (Round to three decimal places)
linFit(womenMile$Year,womenMile$Record)



#What proportion of variance in the men's World Record times in the Mile can be explained by year? (Round to three decimal places)
#0.977

#What proportion of the variance in women's World Record times in the Mile can be explained by year? (Round to three decimal places)
#0.896






