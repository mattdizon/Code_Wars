=begin
Write a function gap with parameters:
     g (integer >= 2) which indicates the gap we are looking for
     m (integer > 2) which gives the start of the search (m inclusive)
     n (integer >= m) which gives the end of the search (n inclusive)
this function should return the first pair of prime numbers (m,n) that have a
gap of length (g)

Example: gap(2, 3, 50)=> [3, 5]
         gap(2,100,110)=>  [101, 103])
         gap(4,100,110)=> [103, 107])
         gap(6,100,110)=>  nil)
         gap(8,300,400)=>  [359, 367])
         gap(10,300,400)=> [337, 347])

         initial plan: create range for finding all the primes within the range
         find the first prime range that is equal to g
         ISSUE: If large range provided as variable
         efficiency would go down

         updated plan: check if the starting number is prime
         if it is prime check if number + g is prime

=end
def gap(g,m,n)
    (m..n).each do |x|
        if isPrime(x)
            if isPrime(x+g) && (x+1..x+g-1).none?{|i| isPrime(i)}
                return [x,x+g]
            end
        end
    end
    nil
end
#this method determines if a number is prime
#instead of taking each number up to itself
#we can use the sqrt function because a numbers factors
#if prime will be <= x * x
def isPrime(x)
  (2..Math.sqrt(x).round).each { |y| return false if x % y == 0 }
  true
end
isPrime(4)
