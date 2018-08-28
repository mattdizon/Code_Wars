=begin
You probably know the "like" system from Facebook and other pages.
People can "like" blog posts, pictures or other items. We want to create the
text that should be displayed next to such an item.

likes ["Peter"] // must be "Peter likes this"
likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
For 4 or more names, the number in and 2 others simply increases.
likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"

    input: array
    output string given condition
    process use if statements and iterate through the names to output a string
=end
def likes(names)
    x = ""
    if names.length == 0
        x << "no one likes this"
    elsif names.length > 0
        if names.length >= 1
            if names.length >= 2
                if names.length >=4
                    x << "#{names[0]}, #{names[1]} and #{names.length.to_i - 2} others likes this"
                elsif names.length == 3
                    x << "#{names[0]}, #{names[1]} and #{names[2]} likes this"
                else
                    x << "#{names[0]} and #{names[1]} like this"
                end
            else
                x << "#{names[0]}"
            end
        end
    end
     x
end
#likes(["Alex", "Jacob", "Mark", "Max", "Alex", "Jacob", "Mark", "Max"])
