Datos <- read.csv("./coursera/exdata_data_household_power_consumption/household_power_consumption.txt", 
                  sep = ";", 
                  colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), 
                  na.strings = "?")
Datos$Datetime <- strptime(paste(Datos$Date,Datos$Time), "%d/%m/%Y %H:%M:%S")
Datossub <- subset(Datos, Datos$Date == "1/2/2007" | Datos$Date == "2/2/2007")
png(file = "plot3.png", width = 480, height = 480, bg = "transparent")

plot(Datossub$Datetime, Datossub$Sub_metering_1, type = "l", xlab = "", 
                        ylab = "Energy sub metering", col = "black")
lines(Datossub$Datetime, Datossub$Sub_metering_2, type = "l", xlab = "", 
                        ylab = "Energy sub metering", col = "red")
lines(Datossub$Datetime, Datossub$Sub_metering_3, type = "l", xlab = "", 
                        ylab = "Energy sub metering", col = "blue")
legend("topright", lwd = 1,  col = c("black","red","blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()