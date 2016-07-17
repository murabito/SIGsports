class SportsController < ApplicationController
  has_scope :available, type: :boolean
  has_scope :position

  def womens_basketball
    @sport = Sport.find_by_type_id(0)
    @athletes = apply_scopes(Athlete).where(sport_id: 3)
  end
  
  def mens_basketball
    @sport = Sport.find_by_type_id(1)
    @athletes = apply_scopes(Athlete).where(sport_id: 4)
  end

  def football
    @sport = Sport.find_by_type_id(2)
    @athletes = apply_scopes(Athlete).where(sport_id: 2)
  end
end
