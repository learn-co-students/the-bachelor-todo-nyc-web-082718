require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, season_info|
    if seasons == season
      season_info.each do |person_info|
        if person_info["status"] == "Winner"
          return person_info["name"].split(" ").first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, season_info|
    season_info.each do |person_info|
      if person_info["occupation"] == occupation
        return person_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |seasons, season_info|
    season_info.each do |person_info|
      if person_info["hometown"] == hometown
        counter += 1
      end
    end
  end

  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, season_info|
    season_info.each do |person_info|
      if person_info["hometown"] == hometown
        return person_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []

  data.each do |seasons, season_info|
    if seasons == season
      season_info.each do |person_info|
        ages << person_info["age"].to_i
      end
    end
  end

  average = (ages.inject{|sum, el| sum + el}.to_f / ages.length).round
end
