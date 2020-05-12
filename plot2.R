power <- read.table("C:/Users/jiaqi/Desktop/household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",stringsAsFactors=FALSE)
power1 <- subset(power,Date %in% c("1/2/2007","2/2/2007"))
power1$datetime <- strptime(paste(power1$Date, power1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png(filename = "plot2.png",width = 480, height = 480, units = "px")
plot(power1$datetime,power1$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()