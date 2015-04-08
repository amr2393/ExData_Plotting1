#Read and subset data
dat = read.table('~/Downloads/household_power_consumption.txt', sep=';', na.strings='?', stringsAsFactors=F,header=T )
dat = subset(dat, dat$Date %in% c('1/2/2007','2/2/2007'))


#Plot
png('plot1.png', height=480, width=480)
hist(dat$Global_active_power,
     xlab='Global Active Power (kilowatts)', 
     ylab='Frequency',
     main='Global Active Power',
     col='red')
dev.off()