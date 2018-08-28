=begin
input: a string strng of n positive numbers (n = 0 or n >= 2)
output: an array of two arrays, each subarray in the following format:
    [number-weight, index in strng of the corresponding number,
     original corresponding number instrng]

EX: strng = "103 123 4444 99 2000"
    weights are 4, 6, 16, 18, 2 (ie 2, 4, 6, 16, 18)
    closest should return
        [[2, 4, 2000], [4, 0, 103]]

EX2:strng = "444 2000 445 544"
    weights are 12, 2, 13, 13 (ie 2, 12, 13, 13)
    closest should return
        [[13, 2, 445], [13, 3, 544]]

For each number in strng calculate its "weight" and then find two numbers of strng that have:
the smallest difference of weights ie that are the closest
with the smallest weights
and with the smallest indices (or ranks, numbered from 0) in strng

process calculate weights
sort weights
use range up to second elem
use string.each_char and use .include(weight) to figure out which indice
in the orginal string
print that index and that elem
=end
def closest(str)
    print arr = str.split(" ")
    weight = []
    arr.each do |x|
        sum = 0
        x.each_char do |y|
            sum += y.to_i
        end
        weight << sum
    end
    #currentlly have weight now need to find the lowes to

end
closest("12 2 3 4 5 6")
