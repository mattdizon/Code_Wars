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

input:  A: int
        B: str
outputs A: str
        B: int
process: A: store RomanNumerals in a hash with the number being the key and
letter being value => read the number and determine its length take the first element of the number



=end
def solution(number)
roman = {1 => 'I',5 => 'V',10 => 'X',50=> 'L',100 => 'C',500 => 'D',1000 => 'M'}



















end
