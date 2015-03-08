hpc<-read.table("household_power_consumption.txt",header=TRUE, na.strings="?", sep=";")
new_hpc<-hpc[(hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007" ),]
new_hpc$DateTime<-strptime(paste(new_hpc$Date,new_hpc$Time),"%d/%m/%Y %H:%M:%S")
##new_hpc

plot(new_hpc$DateTime, new_hpc$Sub_metering_1, type="l", xlab= 'DateTime', ylab='Energy Sub Metering')
lines(new_hpc$DateTime, new_hpc$Sub_metering_2, type="l", col='red')
lines(new_hpc$DateTime, new_hpc$Sub_metering_3, type="l", col='blue')
legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= c(1,1,1), cex= 0.5, col= c("black", "red", "blue"))

