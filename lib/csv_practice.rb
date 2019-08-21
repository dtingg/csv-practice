# csv_practice.rb
require 'csv'
require 'awesome_print'

# Part 1 - CSV Practice
def load_data(filename)
  data = CSV.read(filename, headers: true).map(&:to_h)
  return data
end

def total_medals_per_country(olympic_data)
  total_medals_hash = {}
  
  olympic_data.each do |row_hash|
    team = row_hash["Team"]
    medal = row_hash["Medal"]
    
    if medal != "NA"
      if total_medals_hash.has_key?(team)
        total_medals_hash[team] += 1
      else
        total_medals_hash[team] = 1
      end
    end
    
  end
  
  total_medals_array = total_medals_hash.map do |key, value|
    {"country"=>key, "count"=>value}
  end
  
  return total_medals_array
end

def save_medal_totals(filename, medal_totals)
  CSV.open(filename, "w") do |file|
    file << medal_totals.first.keys
    medal_totals.each do |hash|
      file << hash.values
    end
  end
end

# Part 2 - More Enumerable Practice

def all_gold_medal_winners(olympic_data)
  gold_winners = olympic_data.select do |row_hash|
    row_hash["Medal"] == "Gold"
  end
  
  return gold_winners
end

# returns an array of hashes, each containing all the same data as the input but containing only Gold medal winners.



#   olympic_data.each do |row_hash|
#   
#     if medal != "NA"
#       if total_medals_hash.has_key?(team)
#         total_medals_hash[team] += 1
#       else
#         total_medals_hash[team] = 1
#       end
#     end

#   end

#   total_medals_array = total_medals_hash.map do |key, value|
#     {"country"=>key, "count"=>value}
#   end

#   return total_medals_array
# end












def medals_sorted_by_country(medal_totals)
  
end

def country_with_most_medals(medal_totals)
  
end

def athlete_height_in_inches(olympic_data)
  
end
