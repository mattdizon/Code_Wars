=begin
=end
def to_nato(words)
    new_word =""
	nato = { 'A' => "Alfa",'B' => "Bravo",'C' => "Charlie" ,'D' => "Delta" , "E" => "Echo",
            "F" => "Foxtrot","G" =>  "Golf", "H" =>  "Hotel","I" =>  "India", "J" => "Juliett",
            "K" => "Kilo" , 'L' => "Lima", 'M' =>"Mike" ,'N' => "November" ,'O' => "Oscar",
            'P' => "Papa", 'Q' => "Quebec",'R' => "Romeo", 'S' => "Sierra", 'T' =>  "Tango",
            'U' => "Uniform", 'V' => "Victor", 'W' => "Whiskey",'X' => "Xray",
            'Y' => "Yankee", 'Z' => "Zulu"
     }


     words.upcase.split(" ").each do |x|
         x.each_char do |y|
             new_word <<  "#{nato[y]}"
         end
     end

 print new_word
end
#to_nato("hello world")
