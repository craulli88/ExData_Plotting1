plot4 <- function() {
  data <- read.csv("/Users/chris/Documents/household_power_consumption.csv")
  dataframe <- data.frame(data)
  attach(plot2)
  attach(plot3)
  png(filename="/Users/chris/Documents/plot4.png", height=480, width=480, bg="white")
  subset(dataframe, Time >= 0 | Global_active_power <= 0, select=c(Time, Global_active_power))
  fixdate <- paste(dataframe$Date[1:2880], dataframe$Time[1:2880])
  as.Date(fixdate, format="%d/%m/%Y")
  set <- c(fixdate, dataframe$Global_active_power[1:2880])
  par(mfrow=c(2,2))
  axis(1, at=1:3, lab=c("Thu", "Fri", "Sat"))
  axis(2, at=1:4, lab=c(0,10,20,30))
  plot(dataframe$Sub_metering_1,dataframe$Date)
  plot(dataframe$Sub_metering_1,dataframe$Date))
  plot(dataframe$Sub_metering_1,dataframe$Date))
  plot(dataframe$Sub_metering_1,dataframe$Date))
}


