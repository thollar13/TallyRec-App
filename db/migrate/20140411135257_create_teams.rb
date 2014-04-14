class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :mascot
      t.string :colors
      t.text :fight_song

      t.timestamps
    end
  end
end
