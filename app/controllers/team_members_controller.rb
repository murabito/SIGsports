class TeamMembersController < ApplicationController
  def show
    @sport = find_sport(params[:sport])
    @team_member = TeamMember.find(params[:id])
  end

  def find_sport(sport_param)
    if sport_param == 'womens-basketball'
      sport = Sport.find(3)
      return sport
    elsif sport_param == 'mens-basketball'
      sport = Sport.find(4)
      return sport
    elsif  sport_param == 'football'
      sport = Sport.find(2)
      return sport
    end
  end
end
