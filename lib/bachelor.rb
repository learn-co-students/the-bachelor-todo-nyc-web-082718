require "pry"

def get_first_name_of_season_winner(data, season)
  winner_name = ""
    data.each do |season_key, contestants| 
        if season_key == season 
        contestants.each do |background|
            if background["status"] == "Winner"
             winner_name << background["name"].split.first
      
      end 
     end
    end 
  end 
  winner_name
end

def get_contestant_name(data, occupation)
  
  data.each do |season_key, contestants| 
      contestants.each do |background|
        if background["occupation"] == occupation
          return background["name"]
        end 
      end 
    end 
end

def count_contestants_by_hometown(data, hometown)
  i=0
  data.each do |season_key, contestants| 
    contestants.each do |background|
      if background["hometown"] == hometown
        i+=1
      end 
    end 
  end 
  return i
end

def get_occupation(data, hometown)
  data.each do |season_key, contestants| 
    contestants.each do |background|
      if background["hometown"] == hometown
        return background["occupation"]
      end 
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  count = 0 
  data.each do |season_key, contestants| 
    if season_key == season
      contestants.each do |background|
        age_total += background["age"].to_f 
        count+=1 
      # binding.pry
      end 
    end
  end 
return (age_total/count).round 
end
