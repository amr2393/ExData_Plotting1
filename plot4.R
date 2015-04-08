#Read and subset data
dat = read.table('~/Downloads/household_power_consumption.txt', sep=';', na.strings='?', stringsAsFactors=F,header=T )
dat = subset(dat, dat$Date %in% c('1/2/2007','2/2/2007'))
dat$DateTime = strptime(paste(dat$Date, dat$Time) , format= '%d/%m/%Y %H:%M:%OS')

#Plot
png('plot4.png', height=480, width=480)

par(mfrow=c(2,2))

plot(dat$DateTime, dat$Global_active_power,
     ylab='Global Active Power (kilowatts)', 
     xlab='',
     main='',
     type='l')

plot(dat$DateTime, dat$Voltage,
     ylab='Global Active Power (kilowatts)', 
     xlab='datetime',
     main='',
     type='l')

plot(dat$DateTime, dat$Sub_metering_1,
     ylab='Energy Sub Metering', 
     xlab='',
     main='',
     type='l',
     col='black')
lines(dat$DateTime, dat$Sub_metering_2,
      col='red')
lines(dat$DateTime, dat$Sub_metering_3,
      col='blue')
legend("topright", c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), lty=c(1,1,1), col = c('black', 'red', 'blue'))



plot(dat$DateTime, dat$Global_reactive_power,
     ylab='Global Reactive Power (kilowatts)', 
     xlab='',
     main='',
     type='l')

dev.off()






