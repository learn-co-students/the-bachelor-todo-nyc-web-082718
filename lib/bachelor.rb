def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      return contestants["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |stats|
      if stats["occupation"] == occupation
        return stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  num_contestants = 0

  data.each do |season, contestants|
    contestants.each do |stats|
      if stats["hometown"] == hometown
        num_contestants = num_contestants + 1
      end
    end
  end
  num_contestants
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.find do |stats|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total = 0
  num_contestants = 0

  data[season].each do |contestants|
    total = total + contestants["age"].to_i
    num_contestants = num_contestants + 1
  end
  (total/num_contestants.to_f).round(0)
end
