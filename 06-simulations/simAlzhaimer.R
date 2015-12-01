library("fGarch")

simAlzhaimer <- function(n) {
  results = c()
  mu = 8; sd = 4; xi = -0.0001

  for (i in 1:n) {
    X = rsnorm(30, mu, sd, xi)
    results[i] = (mean(X) - mu) / (sd / sqrt(30))
  }

  results
}
