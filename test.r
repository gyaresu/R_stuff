require(ggplot2)
require(reshape)
df <- data.frame(time = 1:10,
                 a = cumsum(rnorm(10)),
                 b = cumsum(rnorm(10)),
                 c = cumsum(rnorm(10)))
df <- melt(df, id = 'time', variable_name = 'series')

ggplot(df, aes(time, value)) + geom_line(aes(colour = series))

