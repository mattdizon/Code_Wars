=begin
You are given two positive integers a and b (a < b <= 20000).
Complete the function which returns a list of all those numbers
in the interval [a, b) whose digits are made up of prime numbers
(2, 3, 5, 7) but which are not primes themselves.
a = 8 ; b = 25 => [12,15,17,20,21,22,24]

    input: 2 int
    output: array
    process: first create range from a < b and fill an array with everything
    then eliminate the numbers that do not have the prime number as a digit
    then eliminate the numbers that are prime

=end

def not_primes(a,b)
    arr = []
    (a..b).each do |x|
        arr << x
    end
    arr.each do |x|
        if !x.to_s.include?(['2','3','5','7'])
            arr.remove(x)
        end
    end
    print arr
end
not_primes(1,5)
