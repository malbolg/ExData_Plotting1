## Plot 3

# Load full dataset
powerData <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,
                      colClasses=c("character","character",rep("numeric",7)),
                      na.strings = "?")

# Include only the needed subset
shortData <- subset(powerData, Date == "1/2/2007" | Date == "2/2/2007")

# Combine both Date and Time to allow sorting
shortData$DateTime <- as.POSIXct(paste(shortData$Date, shortData$Time), format="%d/%m/%Y %H:%M:%S")



par(mfrow=c(2,2))

# Plot the first time series
plot(shortData$DateTime, shortData$Global_active_power, ylab="Global Active Power", xlab="", type="l")

# Plot the second time series
plot(shortData$DateTime, shortData$Voltage, ylab="Voltage", xlab="datetime", type="l")

#Plot the multiple line time series
plot(shortData$DateTime, shortData$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(shortData$DateTime, shortData$Sub_metering_2, col="red")
lines(shortData$DateTime, shortData$Sub_metering_3, col="blue")

# For this legend I had to add cex parameters in order for the legend to fit above the lines
legend("topright",lty = c(1,1,1), bty="n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","red","blue"), lwd=c(1,1,1), pt.cex=1, cex=0.6)

# Plot the fourth time series
plot(shortData$DateTime, shortData$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")

# Save as PNG file
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()