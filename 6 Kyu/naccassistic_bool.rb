=begin
A Narcissistic Number is a number which is the sum of its own digits,
each raised to the power of the number of digits.
Your code must return true or false depending upon whether
the given number is a Narcissistic number.
1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

    input: number
    output: boolean
    process: convert number into array, each element representing a digit
    in array. take the element and raise it to the power of the array length sum all elements
    test to see if equal to original number
=end

def narc?(num)
    a = num.to_s
    result = 0
    a.each_char do |x|
        result += x.to_i**a.size
    end
print result == num ? true : false
end
#narc?(153)
