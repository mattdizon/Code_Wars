=begin
Make a program that filters a list of strings and returns a list with only your frnds name in it.
If a name has exactly 4 letters in it, you can be sure that it has to be a frnd of yours! Otherwise, you can be sure he's not...
Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]

    input array of names
    output: filtered array of names
    process look at each name if num_elem_in_name >
=end

def frnd(frnds)
    new_arr = []
  frnds.each do |x|
      count = 0
      x.each_char do |y|
          count += 1
      end
      if count == 4
          new_arr << x
      end
  end
         print new_arr

end

#frnd(["Ryan", "Kieran", "Jason", "Yous"])
