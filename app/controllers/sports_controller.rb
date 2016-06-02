class SportsController < ApplicationController
  
  def football
    @football_athletes = Athlete.all
  end
end
