class RatingsController < ApplicationController

  def update
    #binding.pry
    @rating = Rating.find_by(params[:id])
    @rating.update_attributes(score: params[:score])
  end

end
