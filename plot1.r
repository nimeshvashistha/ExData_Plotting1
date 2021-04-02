#getting the data
data_File <- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?")

#subsetting the data
data1 <- subset(data_File, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

#creating the histogram
hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

# saving the plot
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
