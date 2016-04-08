library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)

library(ggplot2)
library(datasets)
data(airquality)
qplot(Wind, Ozone, data = airquality, facets = . ~ factor(Month))
airquality = transform(airquality, Month = factor(Month))
qplot(Wind, Ozone, data = airquality, facets = . ~ Month)

library(ggplot2)
library(ggplot2movies)
g <- ggplot(movies, aes(votes, rating))
print(g)
g
