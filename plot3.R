# Plot 3

## read the data
source ("./Data_Processing.R")

## make plot
png("./output/plot3.png")
plot(Data_Sel$NewDate, as.numeric(as.character(Data_Sel$Sub_metering_1)), type = "l",
     xlab = "", ylab = "Energy sub metering")
lines(Data_Sel$NewDate, as.numeric(as.character(Data_Sel$Sub_metering_2)), col = "red")
lines(Data_Sel$NewDate, as.numeric(as.character(Data_Sel$Sub_metering_3)), col = "blue")
legend ("topright", legend = paste0("Sub_metering_", 1:3), col = c("black", "red", "blue"), lty = 1)
dev.off()

