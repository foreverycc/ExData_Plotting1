# Plot 1

## load data
source ("./Data_Processing.R")

## make plot
png("./output/plot1.png")
hist(as.numeric(as.character(Data_Sel$Global_active_power)),
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
