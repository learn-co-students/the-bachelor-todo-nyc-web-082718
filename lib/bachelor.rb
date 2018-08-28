require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_info_hash|
    if contestant_info_hash["status"].downcase == "winner"
      return contestant_info_hash["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestents|
    contestents.each do |contestant_info_hash|
      if contestant_info_hash["occupation"] == occupation
        return contestant_info_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  total = 0
  data.each do |season, contestents|
    contestents.each do |contestant_info_hash|
      if contestant_info_hash["hometown"] == hometown
        total = total + 1
      end
    end
  end
  total
end

def get_occupation(data, hometown)
  data.each do |season, contestents|
    contestents.each do |contestant_info_hash|
      if contestant_info_hash["hometown"] == hometown
        return contestant_info_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum_of_age = 0
  number_of_contestents = 0
  data[season].each do |contestant_info_hash|
  sum_of_age = sum_of_age + (contestant_info_hash["age"]).to_i
  number_of_contestents = number_of_contestents + 1
end
(sum_of_age / number_of_contestents.to_f).round
end
