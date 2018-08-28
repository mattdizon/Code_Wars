

=begin
 create a function that when provided with a triplet,
 returns the index of the numerical element that lies between
 the other two elements.
    input:array
    output: array_index
    process: create copy of array and sort it
    take the middle element  of the sorted array and
    locate the number in the original array
    return the index

    end
=end
def gimme(input_array)
 print input_array.index(input_array.sort[1])
end
#gimme([2,1,4])
