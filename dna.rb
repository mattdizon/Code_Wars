# In DNA strings, symbols "A" and "T" are complements of each other, as "C" and
# "G". You have function with one side of the DNA (string, except for Haskell);
# you need to get the other complementary side.
# DNA strand is never empty or there is no DNA at all (again, except for Haskell).

# input: string dna sequence ex(ATTGC)
# output: paired DNA sequence ex(TAACG)
# process: read dna string => use for loop to visit each char => change to
# paired letter
def DNA_strand(dna)
    new_dna = ''
    dna.each_char do |x|
    case x
    when 'a'
         new_dna <<  't'
    when 't'
         new_dna << 'a'
    when 'g'
         new_dna << 'c'
    when 'c'
         new_dna << 'g'
    end
end
puts new_dna
end
