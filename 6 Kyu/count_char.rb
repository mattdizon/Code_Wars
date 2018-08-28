def count_chars(s)
  hash = Hash.new(0)
  s.each_char do |x|
    hash[x] += 1
  end
  hash

end
