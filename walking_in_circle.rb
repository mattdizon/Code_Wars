#Given a set of directions, determine if the directions will bring
#the person back to the original starting position
#input: starting
#output: boolean
#process: read string ==> evaluate the value ==> determine if true

def valid(str)
    direction = Hash.new(0)
    str.each_char do |ch|
        direction[ch] += 1
    end
        if (direction['n'] == direction['s'] && direction['e'] == direction['w'])
            print true
        else
            print false
        end


end
valid('nesw')
