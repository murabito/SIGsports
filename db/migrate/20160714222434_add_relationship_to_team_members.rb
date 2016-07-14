class AddRelationshipToTeamMembers < ActiveRecord::Migration
  change_table :team_members do |t|
    t.belongs_to :sport, index: true
  end
end
