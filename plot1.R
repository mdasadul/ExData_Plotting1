
x <- read.table("./data/h_p_c.txt", header=TRUE, sep = ';',stringsAsFactors=FALSE, dec=".")
str(x)
data1<-subset(x,Date=="1/2/2007" | Date=="2/2/2007")
GAC<-as.numeric(data1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(GAC,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()