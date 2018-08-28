


# Given an array, find the int that appears an odd number of times.
#There will always be only one integer that appears an odd number of times.

# input: array with one integer that appears an odd number of times
# output: the number that appears odd number of times
# process: read each element and determine how many times it appears
# use hash to determine how many times integer appears and add 1 to it
def find_it(arr)
    odd_hash = Hash.new(0)
    arr.each do |x|
        odd_hash[x] += 1
    end
    odd_hash.each do |x,y|
        if y % 2 != 0
            return "#{x} \n"
        end
    end
end
