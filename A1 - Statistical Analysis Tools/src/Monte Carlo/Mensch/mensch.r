n <- 1000000

target_score <- 100

winners <- numeric(n)

scores <- matrix(0, nrow = n, ncol = 4)

while (max(apply(scores, 2, max)) < target_score) {
    rolls <- matrix(sample(1:6, n * 4, replace = TRUE), nrow = n, ncol = 4)
    
    scores <- scores + rolls
    
    winners <- max.col(scores, ties.method = "first")
}

winning_probabilities <- table(winners) / n

print(winning_probabilities)