class Pages::WomensBasketballController < ApplicationController
before_action :set_sport

private
  def set_sport
    @sport = Sport.find_by_type_id(0)
  end
end
