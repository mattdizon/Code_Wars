=begin
Your code must return true or false depending upon whether the given number
is a Narcissistic number.
narc number = each digit to the pow of length
=end
def narcissistic?( value )

    result = 0
    value.to_s.each_char do |x|
        result += x.to_i ** value.size
    end
    if result == value
        bool =  true
    else
        bool =  false
    end
    bool
end
#narcissistic?(153)
