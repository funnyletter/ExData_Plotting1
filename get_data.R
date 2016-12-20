library(lubridate)
library(dplyr)

myurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

get_data <- function(url) {
  temp <- tempfile()
  download.file(url, temp)
  data <- read.table(unz(temp, 'household_power_consumption.txt'), sep = ";", stringsAsFactors = FALSE,
                     na.strings = "?", header = TRUE)
  unlink(temp)
  
  data$Date <- dmy(data$Date)
  data$Timestamp <- paste(as.character(data$Date), data$Time)
  data$Timestamp <- ymd_hms(data$Timestamp)
  
  data <- filter(data, Date >= ymd('2007/02/01'), Date <= ymd('2007/02/02'))
  return(data)
}


