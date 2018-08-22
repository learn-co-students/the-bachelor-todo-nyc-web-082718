require 'pry'

def get_first_name_of_season_winner(data, season)
  x = 0
  array = []
  while x < data[season].length
    if data[season][x]["status"] == "Winner"
        array << data[season][x]["name"]
        return array[0].split(" ")[0]
     else  x += 1
    end
  end
end

def get_contestant_name(data, occupation)
  y = 0
  data.each do |season, info|
    x = 0

    hash = info[x]
      while x < info.length
          if hash["occupation"] == occupation
            return hash["name"]
          else
          hash = info[x+1]
          x += 1
        end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, info|
    x = 0
    hash = info[x]
    while x < info.length
      if hash["hometown"] == hometown
        counter += 1
        hash = info [x+1]
        x += 1
      else
         hash = info[x+1]
         x += 1
      end
    end
  end
    counter
end

def get_occupation(data, hometown)
  order = data.sort_by {|season, info| season}
  x = -1
  while x < data.length
    y = 0
      while y < order[x][1].length
        if order[x][1][y]["hometown"] == hometown
          return order[x][1][y]["occupation"]
        else
          y += 1
        end
      end
      x += 1

    end
end



def get_average_age_for_season(data, season)
  age_total = 0
  x = 0
  while x < data[season].length
    age_total += data[season][x]["age"].to_f
    x += 1
  end
  answer = (age_total / x).round(0)
  return answer
end
