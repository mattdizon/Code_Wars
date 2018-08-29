
# an array of one's and zero's convert the equivalent binary value to an integer.
=begin
    input: array
    output: (int)binary conversion
    process: read array to make into binary convert from binary to int
=end

def binary_array_to_number(arr)
    new_arr = arr.join("").to_i(2)
print new_arr
end
#binary_array_to_number([1,0,1,1])
