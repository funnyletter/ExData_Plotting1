source('get_data.R')

myurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

mydata <- get_data(myurl)

png('plot2.png', width = 480, height = 480)
plot(range(mydata$Timestamp), range(mydata$Global_active_power), type = "n",
     xlab = "", ylab = "Global Active Power (kilowatts)")
lines(mydata$Timestamp, mydata$Global_active_power)
dev.off()