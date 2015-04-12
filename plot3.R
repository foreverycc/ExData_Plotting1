# read the data
Data = read.delim("./data/household_power_consumption.txt", sep = ";")
head(Data)
Data_Sel = Data[as.character(Data$Date) %in% c("2/2/2007", "1/2/2007"), ]
Data_Sel$weekday = as.Date(Data_Sel$Date, format = "%d/%m/%Y")
#   strptime(as.Date(Data_Sel$Date, format = "%d/%m/%Y"), "%Y-%m-%d")
head(Data_Sel)

# Plot 3
png("./output/plot3.png")
plot(as.numeric(as.character(Data_Sel$Sub_metering_1)), type = "l",
     axes = F, ylab = "Energy sub metering")
box()
lines(as.numeric(as.character(Data_Sel$Sub_metering_2)), col = "red")
lines(as.numeric(as.character(Data_Sel$Sub_metering_3)), col = "blue")
legend ("topright", legend = paste0("Sub_metering_", 1:3), col = c("black", "red", "blue"), lty = 1)
axis(side = 1, at = c(0,1440, 2880), labels = c("Thu", "FRI", "SAT"))
axis(side = 2)
dev.off()

