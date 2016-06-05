class SportsController < ApplicationController
  
  def womens_basketball
    @sport = Sport.find_by_type_id(0)
    @athletes = @sport.athletes
  end
  
  def mens_basketball
    @sport = Sport.find_by_type_id(1)
    @athletes = @sport.athletes
  end

  def football
    @sport = Sport.find_by_type_id(2)
    @athletes = @sport.athletes
  end
end
