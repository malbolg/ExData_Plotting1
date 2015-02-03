## Plot 3

# Load full dataset
powerData <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,
                      colClasses=c("character","character",rep("numeric",7)),
                      na.strings = "?")

# Include only the needed subset
shortData <- subset(powerData, Date == "1/2/2007" | Date == "2/2/2007")

# Combine both Date and Time to allow sorting
shortData$DateTime <- as.POSIXct(paste(shortData$Date, shortData$Time), format="%d/%m/%Y %H:%M:%S")



# Plot with 3 lines
plot(shortData$DateTime, shortData$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col="black")
lines(shortData$DateTime, shortData$Sub_metering_2, col="red")
lines(shortData$DateTime, shortData$Sub_metering_3, col="blue")

# Add legend
legend("topright", lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"))

# Save as PNG file
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()