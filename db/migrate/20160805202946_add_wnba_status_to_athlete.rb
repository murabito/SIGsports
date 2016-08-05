class AddWnbaStatusToAthlete < ActiveRecord::Migration
  def change
    add_column :athletes, :wnba_status, :string
  end
end
