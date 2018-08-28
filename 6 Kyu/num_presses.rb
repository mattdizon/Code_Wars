
=begin
write a module that can calculate the amount of button presses required for any phrase.
 Punctuation can be ignored for this exercise. Likewise, you can assume the phone
 doesn't distinguish between upper/lowercase characters
 (but you should allow your module to accept input in either for convenience).
 ------ ------- -------
|     | | ABC | | DEF |
|  1  | |  2  | |  3  |
------- ------- -------
------- ------- -------
| GHI | | JKL | | MNO |
|  4  | |  5  | |  6  |
------- ------- -------
------- ------- -------
|PQRS | | TUV | | WXYZ|
|  7  | |  8  | |  9  |             input: string(phrase)
------- ------- -------             output: int(number of key strokes to type out phrase)
------- ------- -------             process: use multi-array to keep each button have its own index
|     | |space| |     |             check each array for the char if char is in that array
|  *  | |  0  | |  #  |             return the index + 1 then iterate
------- ------- -------

("LOL"), 9 => 5,5,5;6,6,6;5;5;5
("HOW R U"), 13
=end

def presses(phrases)
    count = 0
    phrases_arr = phrases.upcase.split("")
    arr = [['1'],['A','B','C','2'],['D','E','F','3'],['G','H','I','4'],['J', 'K', 'L','5'],
    ['M','N','O','6'],['P', 'Q', 'R','S','7'],['T', 'U', 'V','8'],
    ['W','X', 'Y','Z','9'], [" ", '0']]
    phrases_arr.each do |x|
        (0...arr.length).each do |y|
            # check here to see if letter is in this array if not move to next
            if arr[y].include?(x)
                count += (arr[y].index(x) + 1)
            end
        end
    end
    count
end
presses("HOW R U")
