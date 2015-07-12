raw<-read.table("household_power_consumption.txt",sep=";")
tidy<-data.frame(rbind(raw[raw[,1]=="1/2/2007",],raw[raw[,1]=="2/2/2007",]))
png("plot2.png",width=480,height=480)
plot(as.numeric(as.character(tidy$V3)),type="l",main="Global Active Power",ylab="Global Acitve Power(kilowatts)")
dev.off()

