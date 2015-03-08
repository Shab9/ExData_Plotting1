hpc<-read.table("household_power_consumption.txt",header=TRUE, na.strings="?", sep=";")
new_hpc<-hpc[(hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007" ),]
new_hpc

hist(new_hpc$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", main= "Global Active Power")
