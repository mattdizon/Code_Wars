=begin
Create a RomanNumerals helper that can convert a roman numeral to and from an
integer value.

Modern Roman numerals are written by expressing each digit separately starting
with the left most digit and skipping any digit with a value of zero.

    In Roman numerals:
    1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC
    2008 is written as 2000=MM, 8=VIII; or MMVIII
    1666 uses each Roman symbol in descending order: MDCLXVI.

RomanNumerals.to_roman(1000) # should return 'M'
RomanNumerals.from_roman('M') # should return 1000

Symbol    Value
I          1               read 879(DCCCLXXIX) calculate the difference => take the value
V          5               with the the smallest diff while number < value &&  number > 0
X          10              now have the first letter D put D in new str and - its value
L          50              379 current => repeat process => current output:
C          100              str = 279 roman = DC => 179 => DCC => 79 DCC and so on
D          500
M          1,000

new approach
take the number and subtract its difference to find the app letter
insert letter and update number to be the difference taken
at the end of the loop reduce letters acc to roman shorthand
=end
class RomanNumerals
    ROMAN_NUM = { M: 1000,D: 500, C: 100,
                    L: 50, X: 10,V: 5,I: 1}
    NUM_ROMAN = { IIII: :IV, XXXX: :XL,
                    CCCC: :CD, VIV:  :IX,
                    LXL:  :XC, DCD:  :CM}
def self.to_roman(number)

    str = ""
    ROMAN_NUM.each do |x,y|
        while number >= y
            str << x.to_s
            number -= y
        end
    end
    NUM_ROMAN.each_pair do |from, to|
        str.gsub! from.to_s, to.to_s
    end
     str

end

# part 2 converting roman to num
# do the complete opposite expand roman
# and add all the respective values together
def self.from_roman(str)

    roman = str.upcase
    i = 0
    NUM_ROMAN.each do |x,y|
        roman.gsub! y.to_s, x.to_s
    end
    roman.each_char do |c|
      i += ROMAN_NUM[ c.upcase.intern ]
    end
     i

  end
end
print RomanNumerals.to_roman(1990)
