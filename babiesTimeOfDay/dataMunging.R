
Files to choose from:
'vaginalNoINDL.csv', 'allBirths.csv','vaginal.csv','notInduced.csv', 'csection.csv', 'csectionAndinduced.csv', 'induced.csv'

getData <- function(filename){
  df <- read.csv(filename, header = TRUE, as.is = TRUE)
  df <- gather(df, dayOfWeek, value, Total:Saturday)

  df <- na.omit(df)
  df <- cast(df, DOB_WK ~ dayOfWeek, sum)

  df <- gather(df, dayOfWeek, value, Friday:Wednesday)
  df <- subset(df, DOB_WK != 'Not stated')
  df <- subset(df, DOB_WK != 'Not on certificate')
  df <- subset(df, DOB_WK != 'Total')

  df$hourmin <- strptime(df$DOB_WK, '%H%M', tz="GMT")

  df$dayOfWeek <- factor(df$dayOfWeek,
                          levels = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))
  df <- subset(df, dayOfWeek != 'Total')

  return(df)
}

plotBabyData <- function(mainTitle){
  ggplot(subset(df, dayOfWeek != 'Total'), aes(x=hourmin, y = value, color = dayOfWeek)) + geom_point(alpha = .3) + facet_wrap( ~ dayOfWeek, nrow = 2) + theme_bw() + scale_x_datetime(date_labels = "%H%M") + labs(x="Time of Day", y="Number of Babies", title = mainTitle) + coord_cartesian(ylim=c(0,1100)) + theme(axis.text=element_text(size=18), title=element_text(size=24)) + theme(panel.margin = unit(1.4, "lines"), strip.text.x = element_text(size = 20)) + scale_color_manual(values = c('#8B4513','#8B4513','#8B4513','#8B4513','#8B4513', 'steelblue','steelblue'))+ theme(legend.position="none")
}



df <- getData('allBirths.csv')

plotBabyData("Babies born by Minute and Day of Week in 2014")//
ggplot(subset(df, dayOfWeek == 'Saturday'), aes(x=hourmin, y = value)) + geom_point(alpha = .3, color = 'steelblue') + theme_bw() + scale_x_datetime(date_labels = "%H%M") + labs(x="Birth Hour/Minute", y="Number of Babies Born", title = "Number of Babies born per Minute for Saturdays in 2014") + coord_cartesian(ylim=c(0,1100)) + theme(axis.text=element_text(size=14), title=element_text(size=18)) + theme(panel.margin = unit(1.4, "lines"), strip.text.x = element_text(size = 14))

ggplot(subset(df, dayOfWeek %in% c('Saturday', 'Monday')), aes(x=hourmin, y = value, color = dayOfWeek)) + geom_point(alpha = .3) + theme_bw() + scale_x_datetime(date_labels = "%H%M") + labs(x="Birth Hour/Minute", y="Number of Babies Born", title = "Babies born per Minute: Mondays and Saturdays in 2014") + coord_cartesian(ylim=c(0,1100)) + theme(axis.text=element_text(size=18), title=element_text(size=24)) + theme(panel.margin = unit(1.4, "lines"), strip.text.x = element_text(size = 20)) + scale_color_manual(values = c('#8B4513', 'steelblue'))+ theme(legend.position="none")

k = c(as.numeric(as.POSIXct(60 * 60 * 8, origin="2016-04-19", za="GMT")), as.numeric(as.POSIXct(60 * 60 * 12.75, origin="2016-04-19", za="GMT")), as.numeric(as.POSIXct(60 * 60 * 17.5, origin="2016-04-19", za="GMT")))

ggplot(subset(df, dayOfWeek != 'Total'), aes(x=hourmin, y = value, color = dayOfWeek)) + geom_point(alpha = .3) + facet_wrap( ~ dayOfWeek, nrow = 2) + theme_bw() + scale_x_datetime(date_labels = "%H%M") + labs(x="Time of Day", y="Number of Babies", title = "Babies born in 2014, by minute and day of week") + coord_cartesian(ylim=c(0,1100)) + theme(axis.text=element_text(size=18), title=element_text(size=24)) + theme(panel.margin = unit(1.4, "lines"), strip.text.x = element_text(size = 20)) + scale_color_manual(values = c('#8B4513','#8B4513','#8B4513','#8B4513','#8B4513', 'steelblue','steelblue'))+ theme(legend.position="none") + geom_vline(xintercept = k, color = 'brown')



df <- getData('csection.csv')
plotBabyData("C-Section")

df <- getData('induced.csv')
plotBabyData("Induced")


df <- getData('vaginalNoINDL.csv')
plotBabyData("Neither C-section Nor Induced")
