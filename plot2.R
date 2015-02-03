## Plot2

# Load full dataset
powerData <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,
                      colClasses=c("character","character",rep("numeric",7)),
                      na.strings = "?")

# Include only the needed subset
shortData <- subset(powerData, Date == "1/2/2007" | Date == "2/2/2007")

# Combine both Date and Time to allow sorting
shortData$DateTime <- as.POSIXct(paste(shortData$Date, shortData$Time), format="%d/%m/%Y %H:%M:%S")

# Plot the required plot
plot(x=shortData$DateTime, y=shortData$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# Save as PNG file
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()