=begin
Write a function that takes in a string of one or more words, and
returns the same string, but with all five or more letter words reversed
Strings passed in will consist of only letters and spaces.
Spaces will be included only when more than one word is present.

input string
output words with length greater than or equal to 5 reversed
process go through each word if length  >= 5 reverse
=end

def spinWords(string)
    new_word  = string.split(" ")
    word = ""
    new_word.each do |x|
        if x.length >= 5
            x.reverse!
        end
        word << "#{x}"
    end
word
end
spinWords("hello my friend")
