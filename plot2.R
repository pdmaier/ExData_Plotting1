power <-  read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")

library(lubridate)
power$Date <- dmy(power$Date)
power$Time <- hms(power$Time)
rel <- power[which(power$Date >= ymd("2007-02-01") & power$Date <= ymd("2007-02-02")),]

png(file = "plot2.png")
plot(rel$Global_active_power, type = "l", ylab = "Global Active Power (kilowats)", xaxt = "n")
# some way to make the proper x-axis appear goes here
dev.off()