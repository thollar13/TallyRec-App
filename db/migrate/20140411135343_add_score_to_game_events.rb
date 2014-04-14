class AddScoreToGameEvents < ActiveRecord::Migration
  def change
    add_column :game_events, :score, :string
    add_column :game_events, :home_team_id, :integer
    add_column :game_events, :away_team_id, :integer
  end
end
