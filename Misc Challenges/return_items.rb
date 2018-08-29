=begin
Implement the function unique_in_order which takes as argument a sequence
and returns a list of items without any elements with the same value next to
 each other and preserving the original order of elements.

 input:arr
 output: list with unique elements.
=end

def unique_in_order(iterable)
    foo = ""
    foo =  iterable.map{|i| i.to_s + " " }.join.uniq

end
unique_in_order([1,1,2,3,4,3,5,5])
