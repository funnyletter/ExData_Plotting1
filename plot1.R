source('get_data.R')

myurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# Get data using function from get_data.R
mydata <- get_data(myurl)

# Open PNG device, set size
png('plot1.png', width = 480, height = 480)

# Create plot with snazzy one-liner
hist(mydata$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
     main = "Global Active Power", col = "red")

# Close PNG device
dev.off()