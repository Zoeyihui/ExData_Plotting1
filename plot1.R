setwd("E:/Data/exploratory analysis/exdata-data-household_power_consumption/ExData_Plotting1")
housepowercon<- read.table("household_power_consumption.txt",header=TRUE,sep=";")
date<-as.Date(housepowercon$Date,"%d/%m/%Y")
date1<- housepowercon[mapply(identical,"2007-02-01",as.character(date)),]
date2<- housepowercon[mapply(identical,"2007-02-02",as.character(date)),]
data<-rbind(date1,date2)
#save the data will be used later
write.csv(data,file="E:/Data/exploratory analysis/exdata-data-household_power_consumption/ExData_Plotting1/twoday_data.csv",row.names=F,quote=F)
png(file="plot1.png", width = 480, height = 480, units = "px")
hist(as.numeric(as.character(data$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()