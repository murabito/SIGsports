class AthletesController < ApplicationController

  def show
    @athlete = Athlete.find(params[:id])
    @sport = @athlete.sport
  end
end
