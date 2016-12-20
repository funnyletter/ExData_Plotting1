source('get_data.R')

myurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# Get data using function from get_data.R
mydata <- get_data(myurl)

# Open PNG device, set size
png('plot2.png', width = 480, height = 480)

# Create plot
plot(range(mydata$Timestamp), range(mydata$Global_active_power), type = "n",
     xlab = "", ylab = "Global Active Power (kilowatts)")
lines(mydata$Timestamp, mydata$Global_active_power)

# Close PNG device
dev.off()