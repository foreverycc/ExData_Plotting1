# Plot 2

## read the data
source ("./Data_Processing.R")

## make plot
png("./output/plot2.png")
plot(Data_Sel$NewDate, as.numeric(as.character(Data_Sel$Global_active_power)),
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

