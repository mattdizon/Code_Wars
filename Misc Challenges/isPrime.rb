
#
=begin
Define a function isPrime/is_prime() that takes one integer argument and
returns true/True or false/False depending on if the integer is a prime.
 a prime number (or a prime) is a natural number greater than 1 that has
 no positive divisors other than 1 and itself.
=end
def isPrime(num)
  potential = 2
  while potential < num
      if num % potential == 0
          print false
      else
          print true
      end
      potential += 1
  end

end
#isPrime(4)
