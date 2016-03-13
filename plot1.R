## loading data

source("data.R")

## generating the PNG Device
png(filename = "plot1.png", 
          width = 480, height = 480, 
          units = "px")

hist(Global_active_power, 
          col = "red", 
          main = "Global Active Power", 
          xlab = "Global Active Power (kilowatts)",
          breaks = 12, ylim = c(0, 1200))

dev.off()