
=begin
Given two arrays a and b write a function comp(a, b)
that checks whether the two arrays have the "same" elements,
 with the same multiplicities. "Same" means, here, that the elements in b are
 the elements in a squared, regardless of the order.
=end



def comp(array1, array2)
bool = false
  array1.each do |x|
      array2.each do |y|
          if x == y
             bool =  true
         elsif array1.nil? || array2.nil?
             bool = false

         end

      end
  end
  puts bool
end
