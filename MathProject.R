#Price Howard
#9/29/2020
#MA 345-02
library(tidyverse)
library(dplyr)
myData <- read.csv(file = 'California_DDS_Expenditures.csv')

americanIndian <- subset(myData, myData$Ethnicity == 'American Indian')
americanIndianEx <- (americanIndian$Expenditures[])

Asian <- subset(myData, myData$Ethnicity == 'Asian')
AsianEx <- (Asian$Expenditures[])

Black <- subset(myData, myData$Ethnicity == 'Black')
BlackEx <- (Black$Expenditures[])

Hispanic <- subset(myData, myData$Ethnicity == 'Hispanic')
HispanicEx <- (Hispanic$Expenditures[])

multiRace <- subset(myData, myData$Ethnicity == 'Multi Race')
multiRaceEx <- (multiRace$Expenditures[])

nativeHawaiian <- subset(myData, myData$Ethnicity == 'Native Hawaiian')
nativeHawaiianEx <- (nativeHawaiian$Expenditures[])

Other <- subset(myData, myData$Ethnicity == 'Other')
OtherEx <- (Other$Expenditures[])

White <- subset(myData,myData$Ethnicity == 'White not Hispanic')
WhiteEx <- (White$Expenditures[])

allEthnicity <- c('American Indian' ,'Asian' , 'Black', 'Hispanic', 'Multi Race', 'Native Hawaiian', 'Other', 'White')
boxplot(americanIndianEx, AsianEx, BlackEx, HispanicEx, multiRaceEx, nativeHawaiianEx, OtherEx, WhiteEx, names = allEthnicity, main = 'Expenditure by Ethnicity', ylab = 'Expenditures')

zeroToFive <- subset(myData,myData$Age <= 5)
zeroToFiveEx <- (zeroToFive$Expenditures[])

sixToTwelve <- subset(myData, myData$Age > 5 & myData$Age <= 12)
sixToTwelveEX <- (sixToTwelve$Expenditures[])

thirteenToSeventeen <- subset(myData, myData$Age > 12 & myData$Age <= 17)
thirteenToSeventeenEX <- (thirteenToSeventeen$Expenditures[])

eighteenToTwentyone <- subset(myData, myData$Age > 17 & myData$Age <= 21)
eighteenToTwentyoneEX <- (eighteenToTwentyone$Expenditures[])

twentytwoToFifty <- subset(myData, myData$Age > 21 & myData$Age <= 50)
twentytwoToFiftyEX <- (twentytwoToFifty$Expenditures[])

fiftyOnePlus <- subset(myData, myData$Age > 51)
fiftyOnePlusEx <- (fiftyOnePlus$Expenditures[])

allAges <- c('0 to 5', '6 to 12', '13 to 17', '18 to 21', '22 to 50', '51+')
boxplot(zeroToFiveEx, sixToTwelveEX, thirteenToSeventeenEX, eighteenToTwentyoneEX, twentytwoToFiftyEX, fiftyOnePlusEx, names = allAges, main = 'Expenditure by Ethnicity', ylab = 'Expenditures')
