katz_deli = ["Logan", "Avi", "Spencer"]
=begin
Build the now_serving
take_a_number(katz_deli, "Ada") #=> Welcome, Ada. You are number 1 in line.
take_a_number(katz_deli, "Grace") #=> Welcome, Grace. You are number 2 in line.
line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"
now_serving(katz_deli) #=> "Currently serving Ada."
line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"
=end

# method that shows everyone their current place in the line.
# If there is nobody in line, it should say "The line is currently empty.".
def line(arr)
    message = "the line is currently: "
    if arr.length == 0
        print "The line is currently empty."
    else
        arr.each_with_index do |x,y|
            message +=  "#{y.to_i + 1}.#{x} "
        end
        puts message
    end
end
# method that a new customer will use when entering the deli.
# The method should call out (puts) the person's
# name along with their position in line.
def take_a_number(arr, name)
    arr << name
    puts "Welcome, #{name}. You are number #{arr.length} in line"
end
=begin
method which should call out (i.e. puts) the next person in line and
then remove them from the front.
If there is nobody in line, it should call out (puts)
that "There is nobody waiting to be served!".
=end
def now_serving(arr)
    if arr.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{arr.shift}"
    end

end
