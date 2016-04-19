
df <- read.csv('vaginalNoINDL.csv', header = TRUE, as.is = TRUE)
df <- read.csv('allBirths.csv', header = TRUE, as.is = TRUE)
df <- read.csv('vaginal.csv', header = TRUE, as.is = TRUE)
df <- read.csv('notInduced.csv', header = TRUE, as.is = TRUE)
df <- read.csv('csection.csv', header = TRUE, as.is = TRUE)
df <- read.csv('csectionAndinduced.csv', header = TRUE, as.is = TRUE)
df <- read.csv('induced.csv', header = TRUE, as.is = TRUE)


df <- read.csv('vaginalNoINDL.csv', header = TRUE, as.is = TRUE)
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

ggplot(subset(df, dayOfWeek != 'Total'), aes(x=hourmin, y = value)) + geom_point(alpha = .3, color = 'steelblue') + facet_wrap( ~ dayOfWeek, nrow = 2) + theme_bw() + scale_x_datetime(date_labels = "%H%M") + labs(x="Time of Day", y="Number of Babies Born", title = "Babies born in 2014") + coord_cartesian(ylim=c(0,1100)) + theme(axis.text=element_text(size=14), title=element_text(size=18)) + theme(panel.margin = unit(1.4, "lines"), strip.text.x = element_text(size = 14))
