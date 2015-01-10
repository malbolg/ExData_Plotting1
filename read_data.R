## Exploratory data analysis Course assigment 1

fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, dest="power_consumption.zip", method="curl")
data <- read.table(unz("power_consumption.zip", "household_power_consumption.txt"), header=TRUE, sep=";")
D <- read.csv("./data/household_power_consumption.txt", sep=";", header=TRUE )
D$DateTime <- strptime(paste(D$Date, D$Time), "%d/%m/%Y %H:%M:%S")
D2 <- subset(D, as.Date(DateTime) == "2007-02-01" | as.Date(DateTime) == "2007-02-02")
