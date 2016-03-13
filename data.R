## This file is created for loading and extracting data from
## the household_power_consumption dataset.

 file_path <- "./datasets/household_power_consumption.txt"
 
 house_PoC <- read.table(file_path, header = TRUE, sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")
 
dim(house_PoC)  ## to check the dimension of the data whather
                ## 2,075,259 rows and 9 columns

attach(house_PoC) ## The database is attached to the R search path.
                  ## This means that the database is searched by R 
                  ## when evaluating a variable,
                  ## so objects in the database can be accessed by 
                  ## simply giving their names.



## Cleaning the data

## We only need data from the dates 2007-02-01 and 2007-02-02.
house_PoC_new_data <- house_PoC[Date == "1/2/2007" | Date == "2/2/2007", ]
attach(house_PoC_new_data)

## we may check the extracted data using by sorting the data
## sort_dec <- sort(Date, decreasing = TRUE )
## head(sort_dec, n = 10 )
## and tail(sort_dec, n = 10)

## Creates new column that combines date and time data
x <- paste(Date, Time)
house_PoC_new_data$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

rownames(house_PoC_new_data) <- 1:nrow(house_PoC_new_data)
dim(house_PoC_new_data)
attach(house_PoC_new_data)
