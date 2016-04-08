data <- read.table("I:\\Data Science\\household_power_consumption.txt", sep = ';', header = T,
                   colClasses = c("character", "character", "numeric", "numeric",
                                  "numeric", "numeric", "numeric",
                                  "numeric", "numeric"), na.strings = "?")

dat1 <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

#plot1

png(filename= "plot1.png")
hist(dat1$Global_active_power, xlab = "Global Active Power (kilowatts)", xlim = c(0,6),
     main = "Global Active Power", col = "red")
dev.off()
