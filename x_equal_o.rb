# Check to see if a string has the same amount of 'x's and 'o's.
# The method must return a boolean and be case insensitive.
# The string can contain any char.

# input: string of Xs and Os
# output: boolean
# process: read each char of the str and increment each value
# then determine if Xs == Os
# hash needed
def XO (str)
    x_o = Hash.new(0)
    str.upcase!

    str.each_char do |x|
        x_o[x] += 1
    end
    if !str.include?('X') or !str.include?('O')
        print true
    elsif (x_o['X'] == x_o['O'])
        print true

    else
        print false
    end
end
XO('XOXO')
