=begin
Given a positive integer n written as abcd... (a, b, c, d... being digits)
and a positive integer p we want to find a positive integer k, if it exists,
such as the sum of the digits of n taken to the successive powers of p is equal
to k * n. In other words:
    Is there an integer k such as :
    (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k

    input: number
    output boolean
    process: read number multiply each digit by the power of their indice sum it
    => if sum % number == 0 find number

=end

def dig_pow(n, p)
    num = n.to_s
    sum = 0
    new_num = []

    num.each_char do |x|
        new_num << x.to_i ** p
        p += 1
    end
    new_num.each do |x|
        sum += x
    end
    if sum % n == 0
        return (sum / n)
    else
        return -1
    end


end
