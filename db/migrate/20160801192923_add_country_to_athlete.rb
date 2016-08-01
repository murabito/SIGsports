class AddCountryToAthlete < ActiveRecord::Migration
  def change
    add_column :athletes, :country_code, :string, default: 'US'
  end
end
