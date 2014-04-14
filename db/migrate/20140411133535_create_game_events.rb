class CreateGameEvents < ActiveRecord::Migration
  def change
    create_table :game_events do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.text :location

      t.timestamps
    end
  end
end
