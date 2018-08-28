=begin
The function travel will take two parameters r (addresses' list of all clients' as a string)
and zipcode and returns a string in the following format:
    zipcode:street and town,street and town,.../house number,house number,...

    r = "123 Main Street St. Louisville OH 43071,
        432 Main Long Road St. Louisville OH 43071,
        786 High Street Pollocksville NY 56432"

        travel(r, "OH 43071") --> "OH 43071:Main Street St. Louisville,
                                    Main Long Road St. Louisville/123,432"
        travel(r, "NY 56432") --> "NY 56432:High Street Pollocksville/786"
        travel(r, "NY 5643") --> "NY 5643:/"

        input:string of addresses, zipcode your grouping
        output group within the zipcode
        proccess:
            use zipcode as hash, add to hash if it includes zipcode


=end

def travel(r, zipcode)
    hash = Hash.new
    i = 0
    new_str = ""
    arr = r.split(", ")
    for i in (0..arr.length) do
        if arr[i].include?(zipcode)
            print hello
        end
        i += 1
    end





end
travel("123 Main Street St. Louisville OH 43071, 432 Main Long Road St. Louisville OH 43071, 786 High Street Pollocksville NY 56432",92922)
