class AddAvailableToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :available, :boolean, default: true
  end
end
