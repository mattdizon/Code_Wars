=begin
    rock paper scissor bot
    bot keeps track of what move his opponent made
    counters corresponding
    method should take string of moves and return of moves
    rocky would make in response rand move should == x

    EX:
    rps("rrrr") => xppp

    process: bot checks the tallies
            bot sees 0 print x
            bot sees tallies again prints counter from first
=end
def rps(str)
    results ='x'
    r = 0
    p = 0
    s = 0
    i = 0
    arr = str.split("")
    while i< arr.length - 1
        case arr[i]
        when "r"
            r +=1
        when "p"
            p +=1
        when "s"
            s += 1
        end
        if r > p && r > s
            results += "p"
        elsif p > r && p > s
            results += "s"
        elsif s > p && s > r
            results += "r"
        else
            results += "x"
        end
        i += 1
    end
    print results
end

=begin
find the pairs of indices whose elem sum to targ
no pair of indices shoud appear twice
    input: array of num, target to sum
    output array of pairs
    process use nested iteration hold the first element and compare with the second
    then third until match is found. then move on and hold second elem while
    starting to compare it by the third

=end
 def pair_sum(arr,tar)
     i = 0
     new_arr = []
     while i < arr.length
         j = i+ 1
         while j < arr.length
             if arr[i] + arr[j] == tar
                 new_arr << [i,j]
             end
             j += 1
         end
         i += 1
     end
print new_arr
 end
 #pair_sum([1,3,0,2,1],3)
=begin
Create a function that takes a string and returns the string ciphered with Rot13.
 If there are numbers or special characters included in the string, they should be
 returned as they are. Only letters from the latin/english alphabet should be shifted,
 like in the original Rot13 "implementation".
    input:string
    output:each char subed by the 13th char
    process: take each char and find it in an array containing the letters add
            the 13 char to a new str

Input: abcdefghijklmnopqrstuvwxyz , Expected Output: nopqrstuvwxyzabcdefghijklm ,
                                    Actual Output: nopqrstuvwxyzAbcdefghijklm

=end
 def rot13(string)
     new_str = ""
     arrA = ['A','B','C','D','E','F','G','H',
            'I','J','K','L','M','N','O','P',
            'Q','R','S','T','U','V','W',
            'X','Y','Z']
    arra = ['a','b','c','d','e','f','g','h','i','j',
            'k','l','m','n','o','p','q','r','s','t',
            'u','v','w','x','y','z']

    string.each_char do |x|
        if arrA.include?(x)
            if arrA.index(x).to_i < 13
                new_str <<  arrA[arrA.index(x).to_i + 13]
            elsif arrA.index(x).to_i > 13
                new_str <<  arrA[(arrA.index(x).to_i + 13) - 26]
            else
                new_str <<  arrA[0]
            end
        elsif arra.include?(x)
            if arra.index(x).to_i < 13
                new_str <<  arra[arra.index(x).to_i + 13]
            elsif arra.index(x).to_i > 13
                new_str <<  arra[(arra.index(x).to_i + 13) - 26]
            else
                new_str <<  arrA[0]
            end
        else new_str << x
        end
    end

     new_str
end
#rot13("abcdefghijklmnopqrstuvwxyz")
=begin
write a function that returns only the name of a url
domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

input string
output name
process read in url
use

=end
def domain_name(url)
    arr = url.split("/")
    urls =""
    s = 0
    name = arr.reject{|x| x == "http:" || x == "" || x == "https:"}
    while s <name[0].length - 4
        urls << name[0][s]
        s += 1
    end
    if urls[0] == "w" &&  urls[1] == "w" && urls[2] == "w" && urls[3] == "."
        puts urls[(4..-1)]
    else
        puts urls

    end


end

domain_name("http://github.com/carbonfive/raygun")
domain_name("http://www.zombie-bites.com")
domain_name("https://www.cnet.com")
