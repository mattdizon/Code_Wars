=begin
The prime factors of 13195 are 5, 7, 13 and 29. Thus,
the largest prime factor of 13195 is 29.

What is the largest prime factor of the number 600851475143 ?
Develop a method that gives the largest prime factor given a number

    input: number
    output: max prime
    process: develop a list of prime numbers and print the last element of the sorted list

=end

def largest_prime(num)
    arr = []
    i = 2
    while i <= num do
        if num % i == 0 && isPrime?(i)
            arr << i
        end
        i += 1

    end
#print arr.max
end
def isPrime?(i)

    potential_factor = 2
  while potential_factor < i
    if i % potential_factor == 0
      # we've encountered a factor between 1 and the number itself
      # therefore the number cannot be prixme
      return false
    end
    potential_factor = potential_factor + 1
end
true
end
#largest_prime(13195)
