class SportsController < ApplicationController
  
  def football
    @football_athletes = Athlete.where(sport: 2)
  end
end
