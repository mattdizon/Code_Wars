=begin
Input strng of n positive numbers (n = 0 or n >= 2)
Output: an array of two arrays, each subarray in the following format:
    [[number-weight, index in strng of the corresponding number,
    original corresponding number instrng],
    [number-weight, index in strng of the corresponding number,
    original corresponding number instrng]]

two numbers are "close" if the difference of their weights is small.
For each number in strng calculate its "weight" and then find two numbers of strng that have:
    the smallest difference of weights ie that are the closest
    with the smallest weights
    and with the smallest indices (or ranks, numbered from 0) in strng

    strng = "103 123 4444 99 2000"
    weights are 4, 6, 16, 18, 2 (ie 2, 4, 6, 16, 18)
    return [[2, 4, 2000], [4, 0, 103]]
    4 (for 103) and 6 (for 123) have a difference of 2 too but they are not
    the smallest ones with a difference of 2 between their weights.

    strng = "80 71 62 53"
    All the weights are 8.
    return [[8, 0, 80], [8, 1, 71]]
    71 and 62 have also:
    - the smallest weights (which is 8 for all)
    - the smallest difference of weights (which is 0 for all pairs)
    - but not the smallest indices in strng.

    strng = "444 2000 445 544"
    weights = 12, 2, 13, 13 (ie 2, 12, 13, 13)
    return [[13, 2, 445], [13, 3, 544]]
    444 and 2000 have the smallest weights (12 and 2) but not the smallest difference of weights;
    they are not the closest.
    Here the smallest difference is 0 and in the result the indexes are in ascending order.

If n == 0, `closest("") should return []

return the two weights with the smallest weight difference along with their
    respective indice from the original array and the number at that indice
    if multiple differences are equal print the ones that appear earlier in the
    original array
=end
def closest(str)
    arr = str.split(" ")
    diff_pair = []
    weight = []
    diff = 10**20
    x = 0
    new_arr = []
    same = []
    outside = []
    arr.each do |x|
        s = 0
        x.each_char do |y|
            s += y.to_i
        end
        weight << s
    end

    weight_sorted = weight.sort
    while x < weight_sorted.length - 1
        if weight_sorted[x+1] - weight_sorted[x] < diff
            diff = weight_sorted[x+1] - weight_sorted[x]
            diff_pair = [weight_sorted[x],weight_sorted[x+1]]
        end
        x += 1
    end

    diff_pair.each do |x|
        new_arr << [x, weight.index(x), arr[weight.index(x)].to_i]
        if new_arr[0] == new_arr[1]
            same = weight.each_index.select { |i| weight[i] == x }
            new_arr[1] = [x, same[1], arr[same[1]].to_i]
            outside = same
        end
    end
 new_arr
end
closest("103 123 4444 99 2000")    # [[2, 4, 2000], [4, 0, 103]]
closest( "80 71 62 53")        #[[8, 0, 80], [8, 1, 71]]
closest( "444 2000 445 544")   #[[13, 2, 445], [13, 3, 544]]


























#end
