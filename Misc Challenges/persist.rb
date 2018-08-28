=begin
Write a function, persistence, that takes in a positive parameter num and
returns its multiplicative persistence, which is the number of times you must
multiply the digits in num until you reach a single digit.
persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
# and 4 has only one digit
    input: number
    output: count of how many times the number must be multiplied
    to reach size/ length of 1
    process: take number in multiply the numbers together update to new num
    repeat until new num length is 1
    output the count of how many loops it did.

=end

def persistence(n)
    a = 1
        while n.to_s.size > 1
            n.to_s.each_char do |x|
                a *= x.to_i
                n = a
        end
    end
    print n
end
#persistence(39)
