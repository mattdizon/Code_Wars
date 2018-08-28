#given an array of unique in sorted
#write a function that determines which int are still needed to
#fill the consecutive set
# EX: [1,2,4,6,7,8] ==> [3,5]

# input: arr
# output: missing_int_arr
# process: read array ==> check condition ==> add to new arr if condition is met

def missing_numbers(arr)
    new_arr = []
    (arr[0]...arr[-1]).each do |num|
        if !arr.include?(num)
            new_arr << num
        end
    end
end
