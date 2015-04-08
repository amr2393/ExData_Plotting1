#Read and subset data
dat = read.table('~/Downloads/household_power_consumption.txt', sep=';', na.strings='?', stringsAsFactors=F,header=T )
dat = subset(dat, dat$Date %in% c('1/2/2007','2/2/2007'))
dat$DateTime = strptime(paste(dat$Date, dat$Time) , format= '%d/%m/%Y %H:%M:%OS')

#Plot
png('plot2.png', height=480, width=480)
plot(dat$DateTime, dat$Global_active_power,
     ylab='Global Active Power (kilowatts)', 
     xlab='',
     main='',
     type='l')
dev.off()