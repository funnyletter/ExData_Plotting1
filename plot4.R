source('get_data.R')

myurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# Get data using function from get_data.R
mydata <- get_data(myurl)

# Open PNG device, set size
png('plot4.png', width = 480, height = 480)

# Set up 2x2 layout
par(mfrow=c(2,2))

# Make the first plot (global active power)
plot(range(mydata$Timestamp), range(mydata$Global_active_power), type = "n",
     xlab = "", ylab = "Global Active Power (kilowatts)")
lines(mydata$Timestamp, mydata$Global_active_power)

# Second plot (Voltage)
plot(range(mydata$Timestamp), range(mydata$Voltage), type = "n", xlab = "datetime", ylab = "Voltage")
lines(mydata$Timestamp, mydata$Voltage)

# Third plot (sub metering)
plot(range(mydata$Timestamp), range(mydata$Sub_metering_1), type = "n",
     xlab = "", ylab = "Energy sub metering")
lines(mydata$Timestamp, mydata$Sub_metering_1, col = "black")
lines(mydata$Timestamp, mydata$Sub_metering_2, col = "red")
lines(mydata$Timestamp, mydata$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_Metering_3"), lty = c(1,1),
       col = c("black", "red", "blue"), bty = "n")

# Fourth plot (Global reactive power)
plot(range(mydata$Timestamp), range(mydata$Global_reactive_power), type = "n", xlab = "datetime", 
     ylab = "Global_reactive_power")
lines(mydata$Timestamp, mydata$Global_reactive_power)

# Close PNG device
dev.off()