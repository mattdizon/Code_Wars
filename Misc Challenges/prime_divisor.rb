


# Create a function named divisors/Divisors that takes an integer n > 1
# and returns an array with all of the integer's divisors
# (except for 1 and the number itself), from smallest to largest.
# If the number is prime return the string '(integer) is prime'

# input: int
# output: array of divisors excluding 1 and itself
# process: use a range from 2-num and use mod comparison
def divisors(n)
arr = []
  (2...n).each do |x|
      if n % x == 0
          arr << x
      end
  end
  print arr
end
#divisors(15)
