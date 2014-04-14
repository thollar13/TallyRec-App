class AddHomeScoreToGameEvents < ActiveRecord::Migration
  def change
    add_column :game_events, :home_score, :string
  end
end
