setwd("C:\\Users\\ashen\\OneDrive\\Desktop\\IT24104140")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

head(Delivery_Times)

names(Delivery_Times) <- "Time"

breaks <- seq(20, 70, length.out = 10)   

hist(Delivery_Times$Time,
     breaks = breaks,
     right = FALSE,    
     col = "lightblue",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency")

freq <- hist(Delivery_Times$Time, breaks = breaks, right = FALSE, plot = FALSE)

cum_freq <- cumsum(freq$counts)   
midpoints <- freq$mids            

plot(midpoints, cum_freq,
     type = "o",
     col = "red",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")
