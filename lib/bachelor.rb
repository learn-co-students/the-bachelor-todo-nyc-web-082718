def get_first_name_of_season_winner(data, season)
  first_name = ""
  array = []
  data[season].each do |item|
      if item["status"] == "Winner"
      first_name = item["name"]
    end
  end
array = first_name.split(" ")
array[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
    data.each do |season, contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          return contestant["occupation"]
        end
      end
    end
end

def get_average_age_for_season(data, season)
  ages = []
  ages_num = []
  data[season].each do |item|
    ages.push(item["age"])
  end
  ages_num = ages.collect(&:to_i)
  return (ages_num.reduce(:+) / ages_num.size.to_f).round(0)
end
