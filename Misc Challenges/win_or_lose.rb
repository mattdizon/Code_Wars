
# The league table is stored in order from top to bottom in a 2-D array
# Write a function which takes three parameters; team 1 name, team 2 name
# and the result of the match. The function must add the correct points to teams
# 1 and 2 based on the result of the match and reorder the array based on new the
# league positions.
# possible results in the league are 'draw' and 'win'
#  with 3 points for a win and 1 point each for a draw.

=begin
    input: strings: team_1, team_2, result
    output: sorted_arr
    process: compare team_1 with the result ==> then distribute points accordingly.


=end


def league_calculate(team1, team2, result)

 case result
 when 'win'
     team1 += 3
when 'draw'
    team1 += 1
    team2 += 1
end

end
