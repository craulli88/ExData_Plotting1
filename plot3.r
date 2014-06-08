plot3 <- function() {
  data <- read.csv("/Users/chris/Documents/household_power_consumption.csv")
  dataframe <- data.frame(data)
  png(filename="/Users/chris/Documents/plot3.png", height=480, width=480, bg="white")
  plot_colors <- c("black","red","blue")
  axis(1, at=1:3, lab=c("Thu", "Fri", "Sat"))
  xrange <- range(dataframe$Date) 
  plot(xrange, yrange, ylab="Energy sub metering" )  
  lines(dataframe$Sub_metering_1, type="b", lwd=1.5)
  lines(dataframe$Sub_metering_2, type="b", lwd=1.5)
  lines(dataframe$Sub_metering_3, type="b", lwd=1.5)
  legend("SAT",30, c("Sub_metering_1","Sub_metering_2", "Sub_metering_3")
}



