setwd("E:/Data/exploratory analysis/exdata-data-household_power_consumption/ExData_Plotting1")
data<- read.csv("twoday_data.csv",header=TRUE)
data[,1]<-as.Date(as.character(data$Date),"%d/%m/%Y",tz="UTC")
date_time<-as.character(paste(as.character(data$Date),as.character(data$Time)))
datetime<-strptime(date_time,"%Y-%m-%d %H:%M:%S",tz="UTC")
Sys.setlocale(category="LC_TIME",local="USA")
png(file="plot2.png", width = 480, height = 480, units = "px")
plot(datetime,data$Global_active_power,type="l")
dev.off()
