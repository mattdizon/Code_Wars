=begin
 Each letter of a firstname has a value which is its rank in the English alphabet.
 A and a have rank 1, B and b rank 2 and so on.
 The length of the firstname is added to the sum of these ranks
 An array of random weights is linked to the firstnames and each n
 is multiplied by its corresponding weight to get what they call a winning number.



 "COLIN,AMANDBA,AMANDAB,CAROL,PauL,JOSEPH"
[1, 4, 4, 5, 2, 1]
sum each letter and the fname length
multiply by the weight
return person in nth place
    split name into arrays iterate through each array to calculate the sum

=end
def rank(st,we,n)
    qw = []
    i = 0
    sorted_name = []
    sorted_score = []
    name_hash = Hash.new()
    name = st.upcase.split(",")
    alpha_table = {}
    (('A'..'Z').zip(1..26)).each { |x| alpha_table[x[0]] = x[1] }

    if st == ""
        return "No participants"
    elsif n > name.length
        return "Not enough participants"
    else
        name.each do |x|
            name_hash[x] = 0
            x.each_char do |y|
                name_hash[x] += alpha_table[y].to_i
            end
            name_hash[x] += x.length
        end

        name_hash.each do |k,v|
            name_hash[k] = (v * we[i].to_i)
            i += 1
        end
        name_hash.sort_by{|k,v| v}.each do |k,v|
            sorted_name << k
            sorted_score << v
        end


    end
    # fix condition for if 2 people have the same score
    sorted_score.reverse!
    sorted_name.reverse!
    if sorted_score[n-1] == sorted_score[n]
        qw << sorted_name[n-1]
        qw << sorted_name[n]
        print qw[n-1].capitalize


    elsif  sorted_score[n-1] == sorted_score[n-2]
            qw << sorted_name[n-1]
            qw <<  sorted_name[n-2]
            print qw[n-1].capitalize
    else
        print sorted_name[n-1].capitalize
    end


end
#rank("Elijah,Chloe,Elizabeth,Matthew,Natalie,Jayden",[1, 3, 5, 5, 3, 6],2)
