#Write a function that takes an array and counts the number of each unique element present.
def count(array)
    hash = Hash.new(0)
    array.each do |x|
        hash[x] += 1
    end
    hash
end
