# read the data
Data = read.delim("./data/household_power_consumption.txt", sep = ";")
head(Data)
Data_Sel = Data[as.character(Data$Date) %in% c("2/2/2007", "1/2/2007"), ]
Data_Sel$weekday = as.Date(Data_Sel$Date, format = "%d/%m/%Y")
Data_Sel$NewDate = strptime(paste0(Data_Sel$Date,Data_Sel$Time), "%d/%m/%Y%H:%M:%S")
#   strptime(as.Date(Data_Sel$Date, format = "%d/%m/%Y"), "%Y-%m-%d")
head(Data_Sel)