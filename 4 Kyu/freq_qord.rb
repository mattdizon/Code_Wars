=begin
Write a function that, given a string of text (possibly with
punctuation and line-breaks), returns an array of the top-3 most occurring
words, in descending order of the number of occurrences.
    A word is a string of letters (A to Z) optionally containing one or
    more apostrophes (') in ASCII. (No need to handle fancy punctuation.)
    Matches should be case-insensitive, and the words in the result should be lowercased.
    Ties may be broken arbitrarily.
    If a text contains fewer than three unique words, then either
    the top-2 or top-1 words should be returned, or an empty array
    if a text contains no words.

top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]

convert text to lowercase arr => make a hash to get count of each word
print the values that are the highest 3
will need a condition to meet in order to remove characters not includint ' between
characters

top_3_words("a a a  b  c c  d d d d  e e e e e")   ["e", "d", "a"]
top_3_words("a a c b b")        ["a", "b", "c"]
top_3_words("  , e   .. ")    [e]

=end

def top_3_words(text)
    new_text = text.downcase.gsub("/" , "")
    new_text = new_text.gsub(" ' " , "")
    arr = new_text.downcase.gsub(/[.,:]/,"").split(" ")
    hash = Hash.new(0)
    top_three = []
    i = 0
    arr.each do |x|
        hash[x] += 1
    end
    sorted_hash = hash.sort_by{|x,y| y}.reverse
    if hash.length > 3
        while i < 3
            top_three << hash.key(sorted_hash[i][1])
            i += 1
        end
    elsif hash.length == 3
        top_three << sorted_hash[0][0]
        top_three << sorted_hash[1][0]
        top_three << sorted_hash[2][0]
    elsif hash.length == 2
        top_three << hash.key(sorted_hash[0][1])
        top_three << hash.key(sorted_hash[1][1])
    elsif hash.length == 1
        top_three << hash.key(sorted_hash[0][1])
    else top_three
    end

  top_three


end
top_3_words("  //wont won't won't")
top_3_words("a a a  b  c c  d d d d  e e e e e")
top_3_words("a a c b b")
top_3_words("  , e   .. ")
top_3_words("  ...  ")
top_3_words("  '  ")
