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
