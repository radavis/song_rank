class RatingsController < ApplicationController
  def update
    @rating = Rating.find_by(params[:id])
    @track = @rating.track
    if @rating.update_attributes(score: params[:score])
      respond_to do |format|
        format.js
      end
    end
  end
end
