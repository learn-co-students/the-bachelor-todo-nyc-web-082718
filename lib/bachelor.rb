require "pry"
def get_first_name_of_season_winner(data, season)
  data.each do |season_number, data|
    if season_number == season
      i = 0
      while i < data.length
        if data[i]['status'] == 'Winner'
          #binding.pry
          return data[i]["name"].split(' ')[0]
        end
        i += 1
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, data|
    data.each do |data|
      if data['occupation'] == occupation
        return data['name']
        #binding.pry
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_number, data|
    data.each do |data|
      if data['hometown'] == hometown
        count += 1
        #binding.pry
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  count = 0
  data.each do |season_number, data|
    data.each do |data|
      if data['hometown'] == hometown
        return data['occupation']
        #binding.pry
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ageSum = 0
  avg = 0
  data.each do |season_number, data|
    if season_number == season
      i = 0
      len = data.length
      while i < data.length
        ageSum += data[i]['age'].to_i
        i += 1
      end
      avg = (ageSum / len.to_f).round
      return avg
    end
  end
end
