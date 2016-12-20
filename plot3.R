source('get_data.R')

myurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# Get data using function from get_data.R
mydata <- get_data(myurl)

# Open PNG Device
png('plot3.png', width = 480, height = 480)

# Create plot
plot(range(mydata$Timestamp), range(mydata$Sub_metering_1), type = "n",
     xlab = "", ylab = "Energy sub metering")
lines(mydata$Timestamp, mydata$Sub_metering_1, col = "black")
lines(mydata$Timestamp, mydata$Sub_metering_2, col = "red")
lines(mydata$Timestamp, mydata$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_Metering_3"), lty = c(1,1),
       col = c("black", "red", "blue"))

# Close PNG device
dev.off()