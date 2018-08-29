
def permutations(string)
     print string.chars.to_a.permutation.map(&:join)
end
permutations("que")
