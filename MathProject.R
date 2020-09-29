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

