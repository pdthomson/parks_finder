class ParksController < ApplicationController

  def index
    @parks = ParksFacade.get_parks(params[:state])
  end

end
