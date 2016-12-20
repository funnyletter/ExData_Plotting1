source('get_data.R')

myurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

mydata <- get_data(myurl)

png('plot1.png', width = 480, height = 480)
hist(mydata$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequency",
     main = "Global Active Power", col = "red")
dev.off()