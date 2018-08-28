=begin
convert a string to a new string where each character in the new string is '('
if that character appears only once in the original string, or ')'
if that character appears more than once in the original string.
din" => "((("
"recede" => "()()()"
    input word
    output new_word
    process take each char and put it in a hash
        if the value at the hash > 1 add )
=end
def duplicate_encode(word)
    words = word.downcase
    hash = Hash.new(0)
    new_word = ""
    words.each_char do |x|
        hash[x] += 1
    end
    words.each_char do |x|
        if hash[x] > 1
            new_word << ')'
        else
            new_word << '('
        end
    end

     print new_word
end
#duplicate_encode("rEcede")
