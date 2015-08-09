power <-  read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")

library(lubridate)
power$Date <- dmy(power$Date)
power$Time <- hms(power$Time)
rel <- power[which(power$Date >= ymd("2007-02-01") & power$Date <= ymd("2007-02-02")),]

png(file = "plot1.png")
hist(rel$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "Red")
dev.off()