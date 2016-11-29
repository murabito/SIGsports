class TeamMembersController < ApplicationController
  def show
    @team_member = TeamMember.find(params[:id])
  end
end
