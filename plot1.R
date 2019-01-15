Datos <- read.csv("./coursera/exdata_data_household_power_consumption/household_power_consumption.txt", 
                  sep = ";", 
                  colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), 
                  na.strings = "?")
Datos$Datetime <- strptime(paste(Datos$Date,Datos$Time), "%d/%m/%Y %H:%M:%S")
Datossub <- subset(Datos, Datos$Date == "1/2/2007" | Datos$Date == "2/2/2007")
png(file = "plot1.png", width = 480, height = 480, bg = "transparent")

hist(Datossub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
                                                main = "Global Active Power")

dev.off()