# read the data
Data = read.delim("./data/household_power_consumption.txt", sep = ";")
head(Data)
Data_Sel = Data[as.character(Data$Date) %in% c("2/2/2007", "1/2/2007"), ]
Data_Sel$weekday = as.Date(Data_Sel$Date, format = "%d/%m/%Y")
#   strptime(as.Date(Data_Sel$Date, format = "%d/%m/%Y"), "%Y-%m-%d")
head(Data_Sel)

# Plot 2
png("./output/plot2.png")
plot(as.numeric(as.character(Data_Sel$Global_active_power)),
     type = "l", axes = F, ylab = "Global Active Power (kilowatts)")
box()
axis(side = 1, at = c(0,1440, 2880), labels = c("Thu", "FRI", "SAT"))
axis(side = 2)
dev.off()
