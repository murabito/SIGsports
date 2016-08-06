class Pages::MensBasketballController < ApplicationController
  before_action :set_sport

  def testimonials
    @testimonials = Testimonial.all
  end

private
  def set_sport
    @sport = Sport.find_by_type_id(1)
  end
end
