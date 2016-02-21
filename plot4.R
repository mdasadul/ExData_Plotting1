
dataFile <- "./data/h_p_c.txt"
x <- read.table(dataFile, header=TRUE, sep =";",stringsAsFactors=FALSE, dec=".")
#str(x)
data1<-x[x$Date %in% c("1/2/2007","2/2/2007"),]
timef<-strptime(paste(data1$Date,data1$Time),"%d/%m/%Y %H:%M:%S")
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

plot(timef,as.numeric(data1$Global_active_power),type="l",xlab="",ylab="Global Active Power")
plot(timef,as.numeric(data1$Voltage),type="l",xlab="daytime",ylab="Voltage")
plot(timef,as.numeric(data1$Sub_metering_1),type="l",xlab="",ylab="Energy sub metering")
lines(timef,as.numeric(data1$Sub_metering_2),type="l",xlab="",col="red")



lines(timef,as.numeric(data1$Sub_metering_3),type="l",xlab="",col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
plot(timef,as.numeric(data1$Global_reactive_power),type="l",xlab="daytime",ylab="Global_reactive_power")


dev.off()
