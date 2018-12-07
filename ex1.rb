ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]


def tally(array)
  hash = {}
  array.each do |ballot|
    ballot.each do |rank, name|
      if !hash.include?(name)
        hash[name] = 0
      end
      hash[name] += (4 - rank)
    end
  end
  winner_name = hash.sort_by {|key, value| value}.reverse.first[0]
  winner_points = hash.sort_by {|key, value| value}.reverse.first[1]
  return "The winner is #{winner_name} with #{winner_points} points total."
end

puts tally(ballots)
