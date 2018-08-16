def get_first_name_of_season_winner(data, season)
  season_winner = ""
  data.each do |which,contestants|
    if which == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner" 
          season_winner = contestant["name"].split[0]
        end
      end
    end
  end
  return season_winner
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do |season,contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        contestant_name = contestant["name"]
      end
    end
  end
  return contestant_name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season,contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count = count + 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |season,contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown and occupation == ""
        occupation = contestant["occupation"]
      end
    end
  end
  return occupation
end

def get_average_age_for_season(data, season)
  average_age = 0
  running_total = 0
  num = 0
  data.each do |which,contestants|
    if which == season
      contestants.each do |contestant|
        running_total = running_total + contestant["age"].to_f
        num = num + 1
      end
    end
  end
  average_age = running_total/num
  return average_age.round
end
