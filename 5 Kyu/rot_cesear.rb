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
