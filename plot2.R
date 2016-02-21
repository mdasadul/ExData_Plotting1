
dataFile <- "./data/h_p_c.txt"
x <- read.table(dataFile, header=TRUE, sep =";",stringsAsFactors=FALSE, dec=".")
#str(x)
data1<-x[x$Date %in% c("1/2/2007","2/2/2007"),]
timef<-strptime(paste(data1$Date,data1$Time),"%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(timef,as.numeric(data1$Global_active_power),type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()
