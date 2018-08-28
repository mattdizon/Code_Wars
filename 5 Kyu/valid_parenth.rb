# Write a function called that takes a string of parentheses,
# and determines if the order of the parentheses is valid.
# The function should return true if the string is valid,
#and false if it's invalid.
def valid_parentheses(string)
    bool = false
    arr = string.split("").keep_if {|x| x == "(" || x ==  ")"}
    hash = Hash.new(0)
    if arr.first == "("  && arr.last == ")"
        arr.each do |x|
            hash[x] += 1
        end
        if hash["("] == hash[")"]
            bool =  true
        end
    elsif arr.length == 1
        bool = false
    elsif arr.length == 0
        bool = true
    end
    bool
end
#valid_parentheses(")test")
