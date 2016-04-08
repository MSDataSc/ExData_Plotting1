#plot2 (assumes - plot1.R has been run before to create the data table pwr2)
plot(pwr2$timestamp,pwr2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png,"plot2.png",width=480,height=480)
dev.off()

