=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.
Finish the solution so that it returns the sum of all the multiples of 3 or 5
below the number passed in.
=end

def solution(number)
    sum = 0
    x = 0
    (x...number).each do |x|
        if x % 3 == 0 || x % 5 == 0
            sum += x

        end
    end
    print sum
end
#solution(10)
#3,6,9
def display_board()
    puts "   |   |   ";
    puts " -----------";
    puts "   |   |   ";
    puts " -----------";
    puts "   |   |   ";
end
#display_board();


def introduction(name)
  puts "Hi, my name is #{name}."
end

def introduction_with_language( name, language)
     puts "Hi my name is #{name} and I am learning to program in #{language}."
end

introduction_with_language("matt" "python")
