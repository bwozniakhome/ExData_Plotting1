data <- read.table("I:\\Data Science\\household_power_consumption.txt", sep = ';', header = T,
                   colClasses = c("character", "character", "numeric", "numeric",
                                  "numeric", "numeric", "numeric",
                                  "numeric", "numeric"), na.strings = "?")

dat1 <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

#plot2

x <- paste(dat1$Date, dat1$Time)
y <- strptime(x, format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png")
plot(y, dat1$Global_active_power, pch = ".", ylab = "Global Active Power (kilowatts)",
     xlab = "")
lines(y, dat1$Global_active_power)
dev.off()
