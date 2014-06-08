plot2 <- function() {
  data <- read.csv("/Users/chris/Documents/household_power_consumption.csv")
  dataframe <- data.frame(data)
  png(filename="/Users/chris/Documents/plot2.png", height=480, width=480, bg="white")
  axis(1, at=1:3, lab=c("Thu", "Fri", "Sat"))
  xrange <- range(dataframe$date) 
  yrange <- range(dataframe$Global_active_power) 
  npower <- max(dataframe$Global_active_power)
  plot(xrange, yrange, ylab="Global Active Power (kilowatts)" )  
  lines(dataframe$Global_active_power, type="b", lwd=1.5) 
}



