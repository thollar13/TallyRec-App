class AddLeagueToGameEvents < ActiveRecord::Migration
  def change
    add_reference :game_events, :league, index: true
  end
end
