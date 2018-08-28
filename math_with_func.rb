=begin
This time we want to write calculations using functions and get the results.
seven(times(five)) # must return 35
four(plus(nine)) # must return 13
eight(minus(three)) # must return 5
six(divided_by(two)) # must return 3

There must be a function for each number from 0 ("zero") to 9 ("nine")
There must be a function for each of the following mathematical operations: plus, minus, times, dividedBy (divided_by in Ruby)
Each calculation consist of exactly one operation and two numbers
The most outer function represents the left operand, the most inner function represents the right operand
Divison should be integer division,
=end
def zero(n = 0)
    return 0 if
    print n
end
def one(n = 1)
    return n
end
def two(n = 2)
    return n
end
def three(n = 3)
    return n
end
def four(n = 4)
    return n
end
def five(n = 5)
    return n
end
def six(n = 6)
    return n
end
def seven(n = 7)
    return n
end
def eight(n = 8)
    return n
end
def nine(n = 9)
    return n
end
def plus(num,num2="")
  return "+#{num}" if num2 == ""
  return num + num2
end
def minus
end
def times(v= 4)
end
def divided_by
end
