library(ggplot2)
library(animation)

calculate_pi <- function(n) {
    x <- runif(n)
    y <- runif(n)
    inside_circle <- (x ^ 2 + y ^ 2) <= 1
    count <- cumsum(inside_circle)
    pi_values <- data.frame(Iteration = 1:n, Pi = 4 * count / (1:n), X = x, Y = y, Inside = inside_circle)
    return(pi_values)
}

iterations <- 1000000
pi_values <- calculate_pi(iterations)

p <- ggplot(pi_values,
  aes(x = Iteration, y = Pi)) +
  geom_line(color = "blue") +
  geom_hline(aes(yintercept = pi), color = "red", linetype = "dashed") +
  labs(title = "Estimation of Pi using Monte Carlo Method",
       x = "Iteration (log scale)",
       y = "Estimated Value of Pi") +
  theme(plot.title = element_text(hjust = 0.5),
        text = element_text(size = 14)) +
  scale_x_log10()

ggsave("Pi_estimation_plot.png", plot = p, width = 10, height = 6,)


iterations <- 10000
pi_values <- calculate_pi(iterations)
plot_frame <- function(data, i) {
    df <- data[1:i,]
    p <-  ggplot(df, aes(x = X, y = Y, color = Inside)) +
    geom_point() +
    annotate("rect", xmin = 0, xmax = 1, ymin = 0, ymax = 1, alpha = 0.2) +
    annotate("path", x = seq(0, 1, length.out = 100), y = sqrt(1 - (seq(0, 1, length.out = 100))^2), color = "black") +
    xlim(0, 1) +
    ylim(0, 1) +
    labs(title = paste("Estimation of pi:", round(df$Pi[i], 4)),
         subtitle = paste("Number of points:", i),
         x = "X",
         y = "Y") +
    theme_minimal()
    return(p)
}

generate_gif <- function(data, filename = "Pi_animation.gif") {
    saveGIF({
        for (i in seq(1, nrow(data), by = 100)) {
            print(plot_frame(data, i))
        }
    }, movie.name = filename)
}

generate_gif(pi_values)

file_conn <- file("Pi_estimation.csv")
pi_csv <- pi_values[seq(1, nrow(pi_values), by = 100),]
write.csv(pi_csv, file_conn)

iterations <- 10000000
pi_values <- calculate_pi(iterations)
result <- file("Pi_result.txt")
lines <- c("Pi value estimated by Monte Carlo method: ", format(tail(pi_values$Pi, 1), digits = 22), "\n",
           "Real value of Pi:                         ", format(pi, digits = 22), "\n")
writeLines(lines, result, sep = "")
close(result)
