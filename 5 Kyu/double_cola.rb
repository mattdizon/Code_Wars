#zero(plus(one))
=begin
The first one in the queue (Sheldon) buys a can, drinks it and doubles!
The resulting two Sheldons go to the end of the queue.
Then the next in the queue (Leonard) buys a can, drinks it and gets
 to the end of the queue as two Leonards, and so on.

For example, Penny drinks the third can of cola and the queue will be
Rajesh, Howard, Sheldon, Sheldon, Leonard, Leonard, Penny, Penny

Write a program that will return the name of the person who
will drink the n-th cola.

The input data consist of an array which contains at least 1 name,
 and single integer n : (1 ≤ n ≤ 1000000000).

whoIsNext(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 1)=="Sheldon"
whoIsNext(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 52)=="Penny"
whoIsNext(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 7230702951)=="Leonard"

if n > arr.length loop
the loop should be n - arr.length -1  1
at the end of the loop output the person

=end

def whoIsNext(names, r)
    n = names.length
    if r < n
          names[r-1]
    else
    i = 0
    f = n * (2 ** i)
    r -= f
    while r > 0
        i += 1
        f = n * (2 ** i)
        r -= f
    end
    r += (n * (2 ** i))
    names[(r / (2 ** i))]
end



end
