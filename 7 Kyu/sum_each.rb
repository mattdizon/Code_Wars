#Write a function named sumDigits which takes a number as input and returns
#the sum of the absolute value of each of the number's decimal digits.
=begin
    input:number
    output: sum of the each digit in the absolute value form of number
    EX: 10 => 1
    99=> 18
    -32 => |-32| => 5
process convert number to string so we can examine each char
convert each char to int and sum in new value, new value will equal solution
=end
def sumDigits(number)
    sol = 0
    number.abs.to_s.each_char do |x|
        sol += x.to_i
    end
    print sol

end
#sumDigits(32)
