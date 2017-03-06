class SportsController < ApplicationController
  has_scope :available, type: :boolean
  has_scope :unavailable, type: :boolean
  has_scope :position
  has_scope :wnba_status

  def womens_basketball_featured
    @sport = Sport.find_by_type_id(0)
    @news_articles = apply_scopes(NewsArticle).where(sport_id: 3)
  end

  def mens_basketball_featured
    @sport = Sport.find_by_type_id(1)
    @news_articles = apply_scopes(NewsArticle).where(sport_id: 4)
  end

  def football_featured
    @sport = Sport.find_by_type_id(2)
    @news_articles = apply_scopes(NewsArticle).where(sport_id: 2)
  end
  
  def womens_basketball_wnba
    @sport = Sport.find_by_type_id(0)
    @athletes = apply_scopes(Athlete).where(sport_id: 3).where(wnba_status: 'WNBA')
    @guards = @athletes.where(position: 'Guard').to_a
    @guards.sort! {|a,b| a.last_name.downcase <=> b.last_name.downcase }
    @forwards = @athletes.where(position: 'Forward').to_a
    @forwards.sort! {|a,b| a.last_name.downcase <=> b.last_name.downcase }
    @centers = @athletes.where(position: 'Center').to_a
    @centers.sort! {|a,b| a.last_name.downcase <=> b.last_name.downcase }
  end

  def womens_basketball_overseas
    @sport = Sport.find_by_type_id(0)
    @athletes = apply_scopes(Athlete).where(sport_id: 3).where(wnba_status: 'Professional Overseas')
    @guards = @athletes.where(position: 'Guard').to_a
    @guards.sort! {|a,b| a.last_name.downcase <=> b.last_name.downcase }
    @forwards = @athletes.where(position: 'Forward').to_a
    @forwards.sort! {|a,b| a.last_name.downcase <=> b.last_name.downcase }
    @centers = @athletes.where(position: 'Center').to_a
    @centers.sort! {|a,b| a.last_name.downcase <=> b.last_name.downcase }
  end
  
  def mens_basketball
    @sport = Sport.find_by_type_id(1)
    @athletes = apply_scopes(Athlete).where(sport_id: 4)
  end

  def football_nfl
    @sport = Sport.find_by_type_id(2)
    @athletes = apply_scopes(Athlete).where(sport_id: 2).where(nfl_status: 'NFL')
  end

  def football_free_agent
    @sport = Sport.find_by_type_id(2)
    @athletes = apply_scopes(Athlete).where(sport_id: 2).where(nfl_status: 'Free Agent')
  end
end
