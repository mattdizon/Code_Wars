

# square every digit of a number.
# For example, if we run 9119 through the function,
# 811181 will come out, because 92 is 81 and 12 is 1.

# input: numbers
# output: the numbers all squared
# process: go through each character of the number and square the element

def square_digits (num)
    new_nm = []
    num.to_s.each_char do |x|
      new_nm << (x.to_i ** 2)
  end
puts new_nm
end

#square_digits(3212)
