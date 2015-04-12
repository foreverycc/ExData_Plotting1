# read the data
Data = read.delim("./data/household_power_consumption.txt", sep = ";")
head(Data)
Data_Sel = Data[as.character(Data$Date) %in% c("2/2/2007", "1/2/2007"), ]
Data_Sel$weekday = as.Date(Data_Sel$Date, format = "%d/%m/%Y")
#   strptime(as.Date(Data_Sel$Date, format = "%d/%m/%Y"), "%Y-%m-%d")
head(Data_Sel)

# Plot 1
png("./output/plot1.png")
hist(as.numeric(as.character(Data_Sel$Global_active_power)),
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
