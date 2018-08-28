=begin
Write a function that takes an array of numbers
(integers for the tests) and a target number.
It should find two different items in the array that, when added together,
give the target value. The indices of these items should then be returned in
an array like so: [index1, index2].

input array of numbers, target number
output array of pairs
process look at target number
sum the first element with second if no pair iterate second elem
continue until end of array then do the same with the second and third element
incrementing the third and so on.
for pairs that work add them to the new arr
=end

def twoSum(numbers, target)
  numbers.each_with_index do |n1, i1| # this n1 represets the first num i1 represent
      # index thats what the each_with_index enumerable does
    numbers.each_with_index do |n2, i2|
       [i1, i2] if (n1 + n2) == target && i1 != i2
    end
  end

end
twoSum([2,3, 7, 11, 15], 9)
