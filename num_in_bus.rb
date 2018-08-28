
# You are provided with a list (or array) of integer arrays (or tuples).
# Each integer array has two items which represent number of people get into bus
# (The first item) and number of people get off the bus (The sec item) in a bus stop.
# Your task is to return number of people who are still in
# the bus after the last bus station (after the last array).
# Example: number[[10, 0], [3, 5], [5, 8]]) ==> (10-0) + (3-5) + (5-8) => 5

# input: array
# output: integer (number of people left)
# process: iterate over the larger array and for each element subtract the elements
# of the nested array and add the values at the end

def number(stops)
    inside = 0
    out = 0
    total = 0
    stops.each do |x,y|
        inside +=x
        out += y
    end
    total = inside - out
    print total
end
