#### Aliquot Sequence ####
# A number's aliquot sum is the sum of all of its factors excluding itself.
#
# For example, the aliquot sum of 10 is: 1 + 2 + 5 = 8
#
# We can use the aliquot sum to define a special sequence, called the
# aliquot sequence. The aliquot sequence of a number begins with the
# number itself. The second number in the sequence is the first number's
# aliquot sum, the third number is the second number's aliquot sum, and
# so on.
#
# For example, the first 4 numbers in the aliquot sequence of 10 are: 10, 8, 7, 1
#
# Write a function that takes in two numbers, base and n, and returns the
# aliquot sequence of length n starting with base.
#
# Examples:
# aliquot_sequence(10, 4) # => [10, 8, 7, 1]
# aliquot_sequence(10, 2) # => [10, 8]
# aliquot_sequence(7, 4) # => [7, 1, 0, 0]

=begin
    input: starting number, array length(b)
    output aliquote sequence of arr.length(b)
    process: input the initial number => start loop to find the aliquote
            sum and then insert to the array => use the value stored in the array
            continue on the next loop of the array until the array is size b

=end

# First Solution
def aliquot_sequence(a,b)
    arr = [a]
    j = 0
    (b-1).times do
        sum = 0
        i = 1
        while i < arr[j]
            if arr[j] % i == 0
                sum += i
            end
            i += 1
        end
        j += 1
        arr << sum
    end
    print arr
end



def aliq_sum(a)
    i = 1
    sum = 0
    while i < a
        if a % i == 0
            sum += 1
        end
        i += 1
    end
    sum
end

def aliq_seq(a,b)
    arr = [a]
    i = a
    (b-1).times do
        arr << aliq_sum(i)
        i = aliq_sum(i)
    end
    puts arr
end
aliq_seq(7,4)
