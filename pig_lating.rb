=begin
Move the first letter of each word to the end of it,
then add "ay" to the end of the word. Leave punctuation marks untouched.

pig_it('Pig latin is cool') # igPay atinlay siay oolcay
pig_it('Hello world !')     # elloHay orldWay !



while j < arr[i].length
    new_arr << arr[i][j]
    j += 1
end


=end
def pig_it (text)
  arr = text.split(" ")
  new_arr = ""
  i = 0
  arr.each do |x|
      puts x.length
  end
  while i < arr.length
      if !arr[i].include?("!") && !arr[i].include?("?")
          arr[i] << "#{arr[i][0]}ay "
      end
      i+= 1
  end

  arr.each_with_index do |x,y|
      j = 1
      k = 0
      while j < arr[y].length
          new_arr << "#{arr[y][j]}"
          j += 1
      end
      if j == arr[-1].length && j == 1
          new_arr << "#{x} "
      end
    end
    new_arr[0...-1]

end
#pig_it("O tempora o mores !")
