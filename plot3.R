power <- read.table("C:/Users/jiaqi/Desktop/household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",stringsAsFactors=FALSE)
power1 <- subset(power,Date %in% c("1/2/2007","2/2/2007"))
power1$datetime <- strptime(paste(power1$Date, power1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


png(filename = "plot3.png",width = 480, height = 480, units = "px")

with(power1, plot(datetime,Sub_metering_1, xlab="",ylab = "Energy sub metering", type = "n"))
with(power1,lines(datetime,Sub_metering_1))
with(power1,lines(datetime,Sub_metering_2,col="red"))
with(power1,lines(datetime,Sub_metering_3,col="blue"))
legend("topright", lty = 1,col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))


dev.off()