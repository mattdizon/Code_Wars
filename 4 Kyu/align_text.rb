=begin
You will be given a single-lined text and the expected justification width.
The longest word will never be greater than this width.
Strings with one word do not need gaps ('somelongword\n').

Here are the rules:
    SPACES:
        Use spaces to fill in the gaps between words.
        Gap between words can't differ by more than one space.
        Large gaps go first, then smaller ones ie:
            ('Lorem--ipsum--dolor--sit-amet,' (2, 2, 2, 1 spaces)).
    LINE:
    Each line should contain as many words as possible.
    Lines should end with a word not a space.
    Use '\n' to separate lines.
    '\n' is not included in the length of a line.
    Last line should not be justified, use only one space between words.
    Last line should not contain '\n'


    Example with width=30:
                Lorem  ipsum  dolor  sit amet,
                consectetur  adipiscing  elit.
                Vestibulum    sagittis   dolor
                mauris,  at  elementum  ligula
                tempor  eget.  In quis rhoncus
                nunc,  at  aliquet orci. Fusce
                at   dolor   sit   amet  felis
                suscipit   tristique.   Nam  a
                imperdiet   tellus.  Nulla  eu

Given a str and a int=> create a new str with the words of length int seperated
by a \n
you can add spaces inbetween words however the the differences between spaces
cannot exceed 1. The gaps must be added in increasing order

    initial apprach: convert sting into array
    use the array to add to a new_arr each element containing
    words until the elem.length <= 30
    use this new_arr to add spaces to make the width == int


=end
def justify(text,num)
    text = text.split(" ")
    new_arr = []
    word =[]
    sol =""
    #proccesses to group words in lengths < number in argument
    text.each_with_index do |x,y|
        if word.join.length + x.length + (word.length) <= num
            word << x
        else
            new_arr << word
            word = []
            word << x
        end
        new_arr << word if (y +1) == text.length
    end

    new_arr.each_with_index do |x,y|
        len = (num - x.join.length)
        if y + 1 != new_arr.length
            if x.length == 1
                sol += x[0] + "\n"
            else
                i = 0
                (0..len-1).each do |z|
                    x[i] += " "
                    i += 1
                    i = 0 if i > (x.length - 2)
                end
                sol += x.join + "\n"
            end
        else
            sol += x.join(" ")
        end
    end
    sol
end
