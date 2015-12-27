response_times = rexp(100, 1/3)

# Put 10 outliers to mess-up our data
response_times[0:10] = runif(10, 20, 40)

new_response_times = rexp(50, 1)
