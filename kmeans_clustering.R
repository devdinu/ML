N_cluster = 3

train <- function(data) {
    data_classified <- kmeans(data, N_cluster, 30, 3)
    dev.new()
    plot(data, col=data_classified$cluster, pch=18, frame=F, main="K Means")
    points(data_classified$centers, col=1:3, pch=8, cex=2)
    data_classified
}



data <- rbind(matrix(rnorm(100, sd = 25), ncol = 2),
              matrix(rnorm(40, mean = 100, sd = 27), ncol = 2),
              matrix(c(300, 301, 300, 306, 230, 320, 310, 305), ncol=2)
              )

train(data)

readline()
dev.off()
