require "pry"


def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end







def num_points_scored(name)
  points_scored = 0
  hash = game_hash
  
  hash.each do |key, value|
    value.each do |in_key, in_value|
      if in_value == name
        points_scored = key[:players][:points]
        return points_scored
      end
    end 
  end 
end 







def shoe_size(name)
  shoe_size = 0 
  
  game_hash.each do |key, value|
    value.each do |in_key, in_value|
      if in_value == name
        return game_hash[key][value][:shoe]
      end 
    end
  end 
end







def team_colors(team)
   game_hash.each do |key, value|
    value.each do |in_key, in_value|
      if in_value == team
        return game_hash[key][:colors]
      end 
    end
  end 
end






def team_names
  team_names_array = []
  
  game_hash.each do |key, value|
    value.each do |in_key, in_value|
      if value[in_key] == in_value && team_names_array.include?(game_hash[key][:team_name]) == false
        
        team_names_array << game_hash[key][:team_name]
      end 
    end
  end
  team_names_array
end






def player_numbers(team)
  numbers = []
  count = 0 
  
 game_hash.each do |key, value|
    value.each do |in_key, in_value|
      if in_value == team
        while count < game_hash[key][:players].length do 
          numbers << game_hash[key][:players][count][:number]
          count += 1 
        end 
      end 
    end
  end 
  
  numbers
end







def player_stats(name)
  game_hash.each do |key, value|
    value.each do |in_key, in_value|
      if value[in_key] == name
        in_key
      end 
    end 
  end 
end








def big_shoe_rebounds
end



