require 'pry'

{ 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation": "Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation": "Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}

def get_first_name_of_season_winner(data, season)
  #The method should return the first name of that season's winner

  data.each do |show_season, info|
  	if show_season == season
  		i = 0
  		while i < info.length
  			if info[i]["status"] == "Winner"
  				return info[i]["name"].split(' ')[0]
  			end
  			i += 1
  		end
  	end
  end

end

def get_contestant_name(data, occupation)
  #takes in the data hash and an occupation string and returns the name of the woman who has that occupation.

  data.each do |season, info|
  	i = 0

  	while i < info.length
  		if info[i]["occupation"] == occupation
  			return info[i]["name"]
  		end
  		i += 1
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  #This method should return a counter of the number of contestants who are from that hometown
  counter = 0

  data.each do |season, info|
  	info.each do |data|
 		if data["hometown"] == hometown
  			counter += 1
  		end
  	end
  end

  return counter
end

def get_occupation(data, hometown)
  #  It returns the occupation of the first contestant who hails from that hometown.

  data.each do |season, info|
  	info.each do |data|
 		if data["hometown"] == hometown
  			return data["occupation"]
  		end
  	end
  end

  return counter
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
