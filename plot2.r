data_File <- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?")
data1 <- subset(data_File, Date %in% c("1/2/2007","2/2/2007"))

data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

plot(data1$Global_active_power~data1$Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file="plot2.png", height=480, width=480)

