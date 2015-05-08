## Load dataset before source this file with:
# source("readData.R")

png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2, 2))
## FIRST: Top-left
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")
## SECOND: Top-right
plot(DateTime, Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")
## THIRD: Bottom-left
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
# Removing legend box
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
## FOURTH: Bottom-right
plot(DateTime, Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(newData)[4])
dev.off()