class AddPrimaryColorToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :primary_color, :string
  end
end
