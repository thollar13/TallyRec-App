class AddAwayScoreToGameEvents < ActiveRecord::Migration
  def change
    add_column :game_events, :away_score, :string
  end
end
