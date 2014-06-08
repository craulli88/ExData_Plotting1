plot1 <- function() {
  data <- read.csv("/Users/chris/Documents/household_power_consumption.csv")
  dataframe <- data.frame(data)
  png(filename="/Users/chris/Documents/plot1.png", height=480, width=480, bg="white")
  subset(dataframe, Time >= 0 | Global_active_power <= 0, select=c(Time, Global_active_power))
  fixdate <- paste(dataframe$Date[1:2880], dataframe$Time[1:2880])
  as.Date(fixdate, format="%d/%m/%Y")
  set <- c(fixdate, dataframe$Global_active_power[1:2880])
  hist(set, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
}



