class RatingsController < ApplicationController
  def update
    @rating = Rating.find(rating_params[:id])
    @rating.update_attributes(score: rating_params[:score])
    render nothing: true
  end

  private
  def rating_params
    params.permit(:id, :score)
  end
end
