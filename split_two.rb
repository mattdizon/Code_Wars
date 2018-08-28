


#Create program that takes a string and splits them by 2s
#if the string is odd for the last char include "_"
#take str and determine the length
#even condition:append str.shift(2) to new arr
def solution(str)
    arr = str.split("")
    new_arr = []
    if arr.length % 2 == 0
        z = arr.length / 2
        for x in (0...z) do
            new_arr << arr.shift(2).join
        end
    else
        z = arr.length / 2
        for x in (0...z) do
            new_arr << arr.shift(2).join
        end
        new_arr << "#{arr[0]}_"
    end
 new_arr
end
solution("abcdef")
