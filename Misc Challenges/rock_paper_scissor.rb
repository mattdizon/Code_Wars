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
