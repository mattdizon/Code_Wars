# given an array of numbers and strings remove the strings
# Example: [1,2,3,a,b,c,4] ==> [1,2,3,4]
def filter_list(arr)
  new_arr = []
  arr.each do |x|
      if !(x.is_a? Integer)
          new_arr << x
      end
  end
print new_arr



end
