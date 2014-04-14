class AddEndDateToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :end_date, :string
  end
end
