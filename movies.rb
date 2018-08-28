=begin
You have a hash of keys that are users and values that are hashes of
their movie ratings (also in the form of a hash).
The user’s movie ratings are also in a hash of key value pairs of
movie names and ratings  from 1 to 10.
Create a hash containing the average ratings for each movies
generated from the ratings made by all the users in the input.

    input: nested Hash
    output: Hash with the averages for all the movies
    process: take the value for the first movie and average it. then push the movie name
    followed by the average with it to the new hash.
=end


user_ratings = {
   "Ryan" => {"Avengers" => 8, "Little Mermaid" => 8, "Inception" => 9},
   "Clay" => {"Avengers" => 9, "Inception" => 10, "Independence Day" => 7},
   "Christine" => {"Avengers" => 9, "Little Mermaid" => 8, "Inception" => 7},
   "Jon" => {"Avengers" => 5, "Little Mermaid" => 2, "Inception" => 8},
   "David" => {"Avengers" => 3, "Inception" => 8, "Independence Day" => 6}
}
def avg_movie_ratings(hash)
    new_hash = Hash.new(0)

    hash.each do |x,y|
        y.each do |x,y|
            new_hash[x] += y
        end
    end
    new_hash.each do |x,y|
        print "#{x}", y / hash.length
    end
end

#avg_movie_ratings(user_ratings)
