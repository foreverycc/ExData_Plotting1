# Plot 4

## read the data
source ("./Data_Processing.R")

## make plot
png("./output/plot4.png")
par(mfrow = c(2,2))

## plot 4-1
plot(Data_Sel$NewDate, as.numeric(as.character(Data_Sel$Global_active_power)),
     type = "l",  xlab = "", ylab = "Global Active Power (kilowatts)")

## plot 4-2
plot(as.numeric(as.character(Data_Sel$Voltage)), 
     type = "l", xlab = "",  ylab = "Voltage")

## plot 4-3
plot(Data_Sel$NewDate, as.numeric(as.character(Data_Sel$Sub_metering_1)), type = "l",
     xlab = "", ylab = "Energy sub metering")
lines(Data_Sel$NewDate, as.numeric(as.character(Data_Sel$Sub_metering_2)), col = "red")
lines(Data_Sel$NewDate, as.numeric(as.character(Data_Sel$Sub_metering_3)), col = "blue")
legend ("topright", legend = paste0("Sub_metering_", 1:3), col = c("black", "red", "blue"), lty = 1)

## plot 4-4
plot(Data_Sel$NewDate, as.numeric(as.character(Data_Sel$Global_reactive_power)), 
     type = "l", xlab = "", ylab = "Global_reactive_power")
dev.off()