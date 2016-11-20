class SportsController < ApplicationController
  has_scope :available, type: :boolean
  has_scope :position
  has_scope :wnba_status

  def womens_basketball_featured
    @sport = Sport.find_by_type_id(0)
    @news_articles = apply_scopes(NewsArticle).where(sport_id: 3)
  end
  
  def womens_basketball_wnba
    @sport = Sport.find_by_type_id(0)
    @athletes = apply_scopes(Athlete).where(sport_id: 3).where(wnba_status: 'WNBA')
    render 'womens_basketball'
  end

  def womens_basketball_overseas
    @sport = Sport.find_by_type_id(0)
    @athletes = apply_scopes(Athlete).where(sport_id: 3).where(wnba_status: 'Professional Overseas')
    render 'womens_basketball'
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
