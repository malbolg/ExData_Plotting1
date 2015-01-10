## Plo2 
plot(x=D2$DateTime, y=as.numeric(D2$Global_active_power), type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png")
dev.off()