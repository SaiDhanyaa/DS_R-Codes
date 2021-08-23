#AIRQUALITY =DATASETS
airq<- datasets::airquality
##top 10 rows and last 10 rows ######
head(airq,10)
tail(airq,10)
#######  print columns  #########
airq[ ,c(1,2)]

####### exclude the column 6 and load the data in the new data frame ######
airq_new<- airq[-6]

#####summary of the single column by giving index value#
summary(airq[ ,1])

#####summary of the single column by giving column name using ####
airq$Wind

summary(airq$Wind)
#####summary of the whole data####
summary(airq)
################################################
plot(airq$Wind)
plot(airq)
hist(airq)##########doubt???????????####


########points, lines   p=points, l:lines b: both  ##

plot(airq$Temp,airq$Wind, type = "p" )####points  ###
plot(airq$Temp,airq$Wind, type = "l" )####lines   ###

plot(airq$Temp,airq$Wind, type = "b" ) ####both  ###
plot(airq$Temp, type = "l" )
plot(airq$Wind, type = "l" )

 ##xlab means x axix labelling, ylab means y axis label  main for heading, col for colour of the plot ########
plot(airq$Ozone)
plot(airq$Ozone, xlab='INDEX', ylab="OZONE CONCENTRATION", main= "OZONE LEVELS IN NY CITY", col='green')

## bar plot, use the keyword barplot and specify the horiz =T means horizontal bar chart, horiz-f means , vertical bars,  and axes=t means with the axes , axes=f means without axes values ###


barplot(airq$Ozone, ylab="OZONE CONCENTRATION", main= "OZONE LEVELS IN NY CITY", col='green' , horiz=T, axes=T)


barplot(airq$Ozone, ylab="OZONE CONCENTRATION", main= "OZONE LEVELS IN NY CITY", col='green' , horiz=F, axes=F)
 
barplot(airq$Ozone, ylab="OZONE CONCENTRATION", main= "OZONE LEVELS IN NY CITY", col='green' , horiz=F, axes=T)

#HISTOGRAM ####

####USE hist word for it #
hist(airq$Temp)

hist(airq$Temp , main='SOLAR RADIATION VALUES IN AIR', col='blue')





##Box plot#

boxplot(airq$Ozone, main= "OZONE LEVELS IN NY CITY")
boxplot(airq$Solar.R, main= "SOL RAD IN NY CITY")
boxplot(airq$Wind, main= "WIND IN NY CITY")
boxplot.stats(airq$Ozone)$out


######## to find the outliers by using $out ###########

boxplot.stats(airq$Wind)$out    #####20.1 18.4 20.7 these are the outliers in the data set#########


###########multiple boxplots #####

boxplot(airq[, 1:4], main="MULTIPLE BOXPLOTS")


#### MULTILPLE PLOTS IN A SHEET FOR REPORT ##

## margin of the grid(mar),
# no of rows and columns (mfrow),
## whether the border id to be included(bty)
## and the position of the labels  
##labels (las:1 for horizontal, las:0 for the vertical)
##bty box around the plot-- byt="o"-- box around the plot, "n"--> no box around the plot
## par can be used to set the graphical parameters ####
par(mfrow= c(3,3), mar=c(2,5,2,1), las=0, bty="n")
plot(airq$Ozone)
plot(airq$Ozone, airq$Wind)
plot(airq$Ozone, type="p")
plot(airq$Wind, type="l")
barplot(airq$Ozone, ylab="OZONE CONCENTRATION", main= "OZONE LEVELS IN NY CITY", col='green' , horiz=F, axes=T)
hist(airq$Temp , main='SOLAR RADIATION VALUES IN AIR' , xlab='splar rad', col='blue')
boxplot(airq$Ozone, main= "OZONE LEVELS IN NY CITY")
boxplot(airq$Solar.R, main= "SOL RAD IN NY CITY")
boxplot(airq[, 1:4], main="MULTIPLE BOXPLOTS")

boxplot(airq,main="MULTIPLE BOXPLOTS")

skewness(airq$Ozone,na.rm=T)
skewness(airq$Ozone,na.rm=F)
