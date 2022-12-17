# Final Project

setwd("~Downloads")

pregnancy <- read.csv("NationalAndStatePregnancy_PublicUse.csv", stringsAsFactors=T)
nrow(pregnancy)

#### Abortion rate & Age plot

mean((pregnancy$abortionratelt15), na.rm=T)
mean((pregnancy$pregnancyrate1517), na.rm=T)
mean((pregnancy$abortionrate1819), na.rm=T)
mean((pregnancy$abortionrate2024), na.rm=T)
mean((pregnancy$abortionrate2529), na.rm=T)
mean((pregnancy$abortionrate3034), na.rm=T)
mean((pregnancy$abortionrate3539), na.rm=T)
mean((pregnancy$abortionrate40plus), na.rm=T)

abortionratemeans <- c(3.230343, 34.3472, 24.97394, 30.57899, 22.17316, 13.61496, 7.89703, 2.780968)

age <- c(">15", "15-17", "18-19", "20-24", "25-29", "30-34", "35-39", "40+")

plot(x=1:length(age),
     y=abortionratemeans,
     type="l",
     main="US Abortion rate by age",
     xlab = "Age",
     ylab = "Abortion Rate",
     col="red",
     las=2,
     xaxt="n")
axis(1, at = 1:length(age), 
     labels=c(">15", "15-17", "18-19", "20-24", "25-29", "30-34", "35-39", "40+"), las=1)


