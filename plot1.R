# Plot 1

# Load full dataset
powerData <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,
                      colClasses=c("character","character",rep("numeric",7)),
                      na.strings = "?")

# Include only the needed subset
shortData <- subset(powerData, Date == "1/2/2007" | Date == "2/2/2007")

hist(shortData$Global_active_power, col="red",
     xlab="Global Active Power (kilowatts)", main="Global Active Power")

# Save as PNG file
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()