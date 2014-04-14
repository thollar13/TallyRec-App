class RemoveFightSongFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :fight_song, :string
  end
end
