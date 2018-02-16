Random Number Generators in R
========================================================
author: Tony Sellu
date: 15-Feb-2018
autosize: true
font-family: "Helvetica"

Overview
========================================================
1. Introduction
- How do we generate random numbers?
- Why bother with PRNGs when we have TRNGs?
- Middle-Square algorithm example
- PRNG implementations in R
-  What makes a good PRNG for my use case?
- Conclusion


1. Introduction
========================================================
* randomness can simply be defined as that which we cannot predict 
  - __"the quality of lacking any predictable order or plan" - wolframalpha.com__
  
* we use random numbers for simulation and modeling, games and gambling, 
random sampling, and cryptography

* computers are deterministic but can be used to generate random numbers

* __RANDOM.ORG__ is a true random number service that generates randomness 
via atmospheric noise
 - _random_ package makes use of this service
 - non-paying users encounter service limits given the the slow
 nature of generating true randomness
 - pregenerated raw random data available for download (this effectively makes 
 RANDOM.ORG a pseudo-random number generator since we get random numbers 
 generated in the past)

Terminology & Abbreviations
========================================================
+ __deterministic__ Actions are determined by a prescribed set of instructions
+ __random__ Behaviour is non-deterministic e.g. you know the last die roll was 2, but you would 
still not be able to predict the outcome of the next roll (for simplicity, let's assume a fair die, and that you have not accoundted for a large number of variables such as wind speed and direction)
+ __fully/truly random__ Not repeatable
+ __chaotic__ Behaviour is fully deterministic
+ __PRNGs__ pseudo-random number generators (CS-PRNGs for security)
+ __TRNGs__ true random number generators
+ __Mersenne Prime__
+ __Period__ The length of a pseudo-random sequence before it repeats itself


2. How do we generate random numbers?
========================================================
__"random number generation is the generation of a sequence of numbers or 
symbols that cannot be reasonably predicted better than by a random chance, 
usually through a hardware random-number generator" - wikipedia.org__
- roll a die
- flip a coin
- radioactive decay
- thermal noise
- the timing of actual movements of a hard disk read/write head
- radio noise
- algorithms (computational methods)
  - Middle-Square
  - Mersenne-Twister
  - Linear Congruential
  - Combined Congruential
  - Xorshift
  - many more

Can humans generate good quality random numbers?
========================================================
- http://people.ischool.berkeley.edu/~nick/aaronson-oracle/index.html
- posssibly from keystrokes (still not great, but a better source of randdomness 
as long as you are not actively involved)


3. Why bother with PRNGs when we have TRNGs?
========================================================
- case for _TRNG_
  - source of __true randomness__ (casinos and lotteries prefer TRNGs now)
  - more suitable when __security__ is a priority
- case for _PRNG_
  - very __fast__ (with respect to TRNG generation methods)
  - more suitable for __simulation and modeling__
  - no extra __hardware__


4. Demo - Middle-Square
========================================================
- developed by Jon Von Neumann
- very poor period in general


5. PRNGs implementations in R
========================================================
These are what you need to pass to RNGkind().
- _"Wichmann-Hill"_
- _"Marsaglia-Multicarry"_
- _"Super-Duper"_
- __"Mersenne-Twister"__
  - based on the much simpler Linear Congruential Generator
  - the period of the common Mersenne-Twister generator is 2^(19937-1), 
  which is a Mersenne Prime)
- _"Knuth-TAOCP-2002"_
- _"Knuth-TAOCP"_
- _"L'Ecuyer-CMRG"_
- _"user-supplied"_

All these implementations have decent period.


6. What makes a good PRNG for my use case?
========================================================
Properties of a good pseudo-random generator:
- efficiently computable
- sequences have a large period (long cycle)
- sequences have successive values that are independent and unifomrly distributed

There are several ways to test for a good or suitable PRNG:
- simple visual test to detect defects with the human eye
  - for example, bitmap generation
- calculating or retrieving its period
- Diehard tests
  - battery of statistical tests for emasuring the quality of random number generator

All these tests should help to detect defects, such as cyclic variations.


7. Conclusion
========================================================
- a lot of ongoing research related to both TRNGs and PRNGs
- keep using the default pseudo-random genrator in R for most cases
- make sure to test your custom PRNG if you have no choice but to create one
- a simple visual test is a quick way to detect patterns before deciding 
whether to continue with more statistical tests or abandon ship
- __do your best to use available PRNGs and test libraries__


About me
========================================================

* Programmer Analyst roles for several years
* Actively doing a deep learning self-study.
* My journey with R started in 2013/2014
* Learning how to create (efficient) R pacckages
* https://github.com/engAnt


Sources
========================================================
- documentation, elaborate articles/videos
  - Help/Vignette for set.seed()
  - https://www.rdocumentation.org/packages/base/versions/3.4.1/topics/Random
  - https://www.random.org/randomness/
  - https://en.wikipedia.org/wiki/Random_number_generation
  - https://www.youtube.com/watch?v=C82JyCmtKWg
  - https://www.youtube.com/watch?v=6uBb_eOmta8
  - https://www.slideshare.net/benghuid/random-number-generation
- translated or used examples
  - https://www.youtube.com/watch?v=4sYawx70iP4
  - https://www.slideshare.net/guneshwor/random-numbers-39613887
  
