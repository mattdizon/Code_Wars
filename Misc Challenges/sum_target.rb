=begin
find the pairs of indices whose elem sum to targ
no pair of indices shoud appear twice
    input: array of num, target to sum
    output array of pairs
    process use nested iteration hold the first element and compare with the second
    then third until match is found. then move on and hold second elem while
    starting to compare it by the third

=end
 def pair_sum(arr,tar)
     i = 0
     new_arr = []
     while i < arr.length
         j = i+ 1
         while j < arr.length
             if arr[i] + arr[j] == tar
                 new_arr << [i,j]
             end
             j += 1
         end
         i += 1
     end
print new_arr
 end
