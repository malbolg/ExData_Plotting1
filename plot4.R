## plot4.R

par(mfrow=c(2,2))
plot(D2$DateTime, D2$Global_active_power, ylab="Global Active Power", xlab="", type="l")
plot(D2$DateTime, D2$Voltage, ylab="Voltage", xlab="datetime", type="l")


plot(D2$DateTime, D2$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(D2$DateTime, D2$Sub_metering_2, col="red")
lines(D2$DateTime, D2$Sub_metering_3, col="blue")

legend("top", lty=1, bty="n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"))


plot(D2$DateTime, D2$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")

dev.copy(png, file="plot4.png")
dev.off()