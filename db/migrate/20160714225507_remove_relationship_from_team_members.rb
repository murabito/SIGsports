class RemoveRelationshipFromTeamMembers < ActiveRecord::Migration
  def change
    remove_column :team_members, :sport_id, index: true
  end
end
