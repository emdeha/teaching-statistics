drawBinomial = function(n, p) {
  # Draw histogram
  x = rbinom(100, n, p)
  hist(x, prob=T, col=topo.colors(n))
  
  # Draw distribution
  xvals = 0:n
  points(xvals, dbinom(xvals, n, p), type="h", lwd=3)
  points(xvals, dbinom(xvals, n, p), type="p", lwd=3)
}
