power <- read.table("C:/Users/jiaqi/Desktop/household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",stringsAsFactors=FALSE)

power1 <- subset(power,Date %in% c("1/2/2007","2/2/2007"))

png(filename = "plot1.png",width = 480, height = 480, units = "px")
hist(power1$Global_active_power,col="red",xlim=c(0,6),ylim=c(0,1200),xlab="Global Active Power(kilowatts)",main = "Global Active Power")
dev.off()