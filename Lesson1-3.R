?Devices

pdf(file = "myplot.pdf")
library(datasets)
with(faithful, plot(eruptions, waiting))
title("Old Faithful Geyser Data")
dev.off()

getwd()
dev.copy(png, file = "geyserplot.png")
dev.copy2pdf

library(swirl)
rm(list=ls())
swirl()
