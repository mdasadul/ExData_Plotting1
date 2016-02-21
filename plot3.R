
dataFile <- "./data/h_p_c.txt"
x <- read.table(dataFile, header=TRUE, sep =";",stringsAsFactors=FALSE, dec=".")
#str(x)
data1<-x[x$Date %in% c("1/2/2007","2/2/2007"),]
timef<-strptime(paste(data1$Date,data1$Time),"%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(timef,as.numeric(data1$Sub_metering_1),type="l",xlab="",ylab="Energy sub metering")
lines(timef,as.numeric(data1$Sub_metering_2),type="l",xlab="",col="red")
lines(timef,as.numeric(data1$Sub_metering_3),type="l",xlab="",col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
