class Team < ActiveRecord::Base
	has_many :game_events_as_home, :class_name => 'GameEvent', :foreign_key => :home_team_id
	has_many :game_events_as_away, :class_name => 'GameEvent', :foreign_key => :away_team_id
	belongs_to :league

	def games
		(game_events_as_away + game_events_as_home).sort_by {|game| game.start_date }
	end

end
