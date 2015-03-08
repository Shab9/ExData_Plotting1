hpc<-read.table("household_power_consumption.txt",header=TRUE, na.strings="?", sep=";")
new_hpc<-hpc[(hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007" ),]
new_hpc$DateTime<-strptime(paste(new_hpc$Date,new_hpc$Time),"%d/%m/%Y %H:%M:%S")
new_hpc
plot(new_hpc$DateTime, new_hpc$Global_active_power,type="l", xlab= 'DateTime', ylab='Global Active Power(kilowatts)')
