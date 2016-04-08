library(ggplot2)

str(mpg)

qplot(displ, hwy, data = mpg, geom = c("point", "smooth"))

qplot(hwy, data = mpg, fill = drv)

g <- qplot(displ, hwy, data = mpg)

g + facet_grid(. ~ drv) 

g + facet_grid(. ~ drv) + geom_point()

g + facet_grid(. ~ drv) + geom_smooth() + geom_point()

g + facet_grid(. ~ drv) + geom_smooth() + geom_point(color = "steelblue", size = 4, alpha = 1/2)

g + geom_smooth() + geom_point(aes(color = drv), size = 4, alpha = 1/2)

qplot(displ, hwy, data = mpg, facets = .~drv)

?geom_point
