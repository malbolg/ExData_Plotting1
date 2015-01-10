## plot 3
plot(D2$DateTime, D2$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(D2$DateTime, D2$Sub_metering_2, col="red")
lines(D2$DateTime, D2$Sub_metering_3, col="blue")

legend("topright", lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"))

dev.copy(png, file="plot3.png")
dev.off()