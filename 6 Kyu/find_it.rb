=begin
Given an array, find the int that appears an odd number of times.
There will always be only one integer that appears an odd number of times.
input:array
output number that appears odd number of times
=end
def find_it(seq)
    hash = Hash.new(0)
    seq.each do |x|
        hash[x] += 1
    end
    hash.each do |x,y|
        print x.to_i if y % 2 != 0
    end
  #your code here
end
#find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
