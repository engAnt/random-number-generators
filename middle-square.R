## Not recommended

## - take a seed
## - square it
## - then extract the middle N digits, where N is the length of the initial seed
## - if you get a value less than 2*length(initial seed), pad it with leading zeros
## - repeat

library(stringr)

#init_lst <- list(seed=12345, digits=4)
init_lst <- list(seed=1234, digits=4)

#getNextRand <- function(seed, digits) {
getNextRand <- function() {
  seed <- init_lst$seed
  digits <- init_lst$digits
  
  n <- paste0(seed * seed)
  n_len <- str_length(paste0(4*4))
  ##while (n_len < digits * 2) {
  ##  n <- paste0(0, n)
  ##}
  
  ## stringi::stri_pad_left(n, digits * 2, pad='0') # also words
  n <- str_pad(n, digits * 2, side="left", pad='0')
  
  start <- floor(digits / 2)
  end <- start + digits
  new_seed <- as.integer(str_sub(n, start=start + 1, end=end))
  new_seed
}


#getNextRand()

n <- 0
last_generated_rand <- NULL
while (n < 30) {
  last_generated_rand <- getNextRand()
  init_lst$seed <- last_generated_rand
  print(last_generated_rand)
  n <- n + 1
}


