# 
# Simulates what's the probability of at least 1 pair of `n` people having
# the same birthdays.
#
simulateBirthdayParadox = function(n, numSims = 1000) {
  duplicatedCount = 0

  for (i in seq(1, numSims)) {
    birthdays = sample(seq(1, 365), n, replace=T)

    dup = birthdays[duplicated(birthdays)]

    if (length(dup) == 1) {
      duplicatedCount = duplicatedCount + 1
    }
  }

  duplicatedCount / numSims
}

#
# Simulates having 12 calls per week and calculates the probability that
# you've been called at least once each day.
#
simulatePhoneCalls = function(numSims = 1000) {
  fullWeekCount = 0

  for (i in seq(1, numSims)) {
    calls = sample(seq(1, 7), 12, replace=T)
    uniqueCalls = unique(calls)

    if (length(uniqueCalls) == 7) {
      fullWeekCount = fullWeekCount + 1
    }
  }

  fullWeekCount / numSims
}

simulateHatCheck = function(n, k, numSims = 1000) {
  gotHats = 0

  for (i in seq(1, numSims)) {
    hats = sample(n, n)

    hatsOnSamePlaces = hats[hats == seq(1,n)]
    if (length(hatsOnSamePlaces) > k) {
      gotHats = gotHats + 1
    }
  }

  gotHats / numSims
}
