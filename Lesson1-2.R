library(swirl)
swirl()

library(datasets)
data(cars)
with(cars, plot(speed, dist))

library(lattice)
state <- data.frame(state.x77, region = state.region)
xyplot(Life.Exp~Income | region, data = state, layout = c(4,1))

library(ggplot2)
data()
data(mpg)
qplot(displ, hwy, data=mpg)

hist(airquality$Ozone)
with(airquality, plot(Wind, Ozone))
title(main="Ozone and Wind in New York City")

with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City"))
with(subset(airquality, Month ==5), points(Wind, Ozone, col = "blue" ))

with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City", type = "n"))
with(subset(airquality, Month ==5), points(Wind, Ozone, col = "blue" ))
with(subset(airquality, Month !=5), points(Wind, Ozone, col = "red" ))
legend("topright", pch = 1, col = c("blue", "red"), legend = c("May", "Other Months"))

with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City",pch =20))
model <- lm(Ozone~Wind, airquality)
abline(model, lwd = 2)

airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone~Month, airquality, xlab = "Month", ylab = "Ozone (ppb")

par(mfrow = c(1,3), mar=c(4,4,2,1), oma = c(0,0,2,0))
with(airquality, {
  plot(Wind, Ozone, main = "Ozone and Wind")
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
  plot(Temp, Ozone, main = "Ozone and Temperature")
  mtext("Ozone and Weather in New York City", outer = TRUE)
})

par("lty")
par("col")
par("bg")
par("pch")
par("mar")
par("mfrow")

x <- rnorm(100)
hist(x)
y <- rnorm(100)
plot(x,y)
z <- rnorm(100)
plot(x,z)
par(mar = c(4,4,2,2))

plot(x,y, pch = 20)
plot(x,y, pch = 4)
title("Scatterplot")
text(-2,-2, "Label")
legend("topleft", legend = "Data", pch = 20)
fit <- lm(y~x)
abline(fit)
abline(fit, lwd = 3, col = "blue")
plot(x,y, xlab="Weight", ylab = "Height", main = "Scatterplot", pch =20)

z <- rpois(100,2)
plot(x,z)

g <- gl(2,50, labels = c("Male", "Female"))
plot(x,y, type = "n") #make plot but don't but data in
points(x[g== "Male"], y[g == "Male"], col = "green")
points(x[g== "Female"], y[g == "Female"], col = "blue", pch =19)
