install.packages("data.table")
library(data.table)
pwr <- fread("household_power_consumption.txt",sep=";",na.strings="?",header=TRUE)
pwr$Date <- as.Date(pwr$Date,"%d/%m/%Y")
pwr2 <- subset(pwr,Date>="2007-02-01" & Date<="2007-02-02")
pwr2 <- transform(pwr2, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")

#plot1
hist(pwr2$Global_active_power,breaks=25,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.copy(png,"plot1.png",width=480,height=480)
dev.off()

