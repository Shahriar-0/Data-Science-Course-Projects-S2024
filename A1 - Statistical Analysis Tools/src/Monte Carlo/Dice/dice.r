library(ggplot2)

n <- 1000000

dice1 <- sample(1:6, n, replace = TRUE)
dice2 <- sample(1:6, n, replace = TRUE)
total <- dice1 + dice2

probabilities <- table(total) / n

df <- data.frame(Outcome = as.numeric(names(probabilities)), Probability = as.numeric(probabilities))

p <- ggplot(df, aes(x = Outcome, y = Probability)) +
    geom_bar(stat = "identity", fill = "steelblue") +
    scale_x_continuous(breaks = 2:12) +
    scale_y_continuous(breaks = seq(0, 0.3, by = 0.01)) +
    labs(x = "Sum of two dice", y = "Probability", title = "Monte Carlo Simulation of Rolling Two Dice")
ggsave("dice_plot.png", plot = p, width = 10, height = 6, units = "in")

file_conn <- file("dice_result.csv")
df$real <- c(1/36, 2/36, 3/36, 4/36, 5/36, 6/36, 5/36, 4/36, 3/36, 2/36, 1/36)
df <- df[, -1]
write.csv(df, file_conn)
