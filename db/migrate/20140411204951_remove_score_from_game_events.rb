class RemoveScoreFromGameEvents < ActiveRecord::Migration
  def change
    remove_column :game_events, :score, :string
  end
end
