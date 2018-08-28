# Write a method that takes an array of consecutive (increasing) letters as input and that
# returns the missing letter in the array.
# You will always get an valid array. And it will be always exactly one letter be missing.
# The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# input: arr [a,b,d]
# output: missing letter in the range ==> case
# process: iterate over array determine which letter is in range
def find_missing_letter(arr)
    missing_letter = ''
    (arr[0]...arr[-1]).each do |x|
        if !arr.include?(x)
            print x
        end
    end

end
