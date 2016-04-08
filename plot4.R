data <- read.table("I:\\Data Science\\household_power_consumption.txt", sep = ';', header = T,
                   colClasses = c("character", "character", "numeric", "numeric",
                                  "numeric", "numeric", "numeric",
                                  "numeric", "numeric"), na.strings = "?")

dat1 <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

x <- paste(dat1$Date, dat1$Time)
y <- strptime(x, format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot4.png")
par(mfrow = c(2,2))
plot(y, dat1$Global_active_power, pch = ".", ylab = "Global Active Power (Kilowatts)",
     xlab = "")
lines(y, dat1$Global_active_power)

plot(y, dat1$Voltage, xlab = "datetime", ylab = "Voltage", type = 'n')
lines(y, dat1$Voltage)

plot(y, dat1$Sub_metering_1, type = 'n', xlab = "", ylab = "Energy sub metering")
lines(y, dat1$Sub_metering_1, col = "black")
lines(y, dat1$Sub_metering_2, col = "red")
lines(y, dat1$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lwd = 1, lty = 1, bty = "n")

plot(y, dat1$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = 'n')
lines(y, dat1$Global_reactive_power)
dev.off()
