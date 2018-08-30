=begin
Complete the solution so that it strips all text that
follows any of a set of comment markers passed in. Any
whitespace at the end of the line should also be stripped out.
Example:
    Input:
        apples, pears # and bananas
        grapes
        bananas !apples
------------------------------------------------
    Output:
        apples, pears
        grapes
        bananas
result = solution("apples, pears # and bananas\ngrapes\nbananas !apples",
                ["#", "!"])
# result should == "apples, pears\ngrapes\nbananas"

    Proccess: convert str to arr seperated by \n
    go through each array element which will contain multiple words
     and add it to a new str until  comment mark is reached
     add this str to a new array which will hold all the words
     continue until the last array is proccessed. => Remove
     white space and then  Convert this array to a
     str by putting a \n at the end of each line ie .join("\n")


=end
def solution(str, comm)
    arr = str.split("\n")
    sol = []
    arr.each do |x|
        words = ""
        (0..(x.length)-1).each do |a|
            if comm.include? x[a]
                 break
             else
                 words += x[a]
             end
         end
      sol << words.split
  end
 sol.join("\n")
end
