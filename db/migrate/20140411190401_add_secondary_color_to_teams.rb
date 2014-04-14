class AddSecondaryColorToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :secondary_color, :string
  end
end
