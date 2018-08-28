

# An isogram is a word that has no repeating letters, consecutive or
# non-consecutive. Implement a function that determines whether a string
# that contains only letters is an isogram.
# Example: is_isogram("Dermatoglyphics" ) == true
# is_isogram("aba" ) == false

=begin
    input: string
    output: boolean
    process: make hash based on string, incriment value, if value > 1 then it
    is not an isogram
=end

def is_isogram(string)


  word = Hash.new(0)
  is_iso = true
  string.downcase.each_char do |x|
      word[x] += 1
  end
  word.each do |x,y|
      if y > 1
          is_iso = false
      end
  end
  return is_iso
end
is_isogram("Dermatoglyphics" )
is_isogram("aba" )
