class SportsController < ApplicationController
  
  def mens_basketball
    @athletes = Athlete.where(sport: 0)
    @sport = 0
  end
  
  def womens_basketball
    @athletes = Athlete.where(sport: 1)
    @sport = 1
  end

  def football
    @athletes = Athlete.where(sport: 2)
    @sport = 2
  end
end
