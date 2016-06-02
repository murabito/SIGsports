class AddFieldToAthletes < ActiveRecord::Migration
  change_table :athletes do |t|
    t.belongs_to :sport, index: true
  end
end
