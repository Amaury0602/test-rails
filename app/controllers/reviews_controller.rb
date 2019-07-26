class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @review = Review.new(review_params)
    @review.service = Service.find(params[:service_id])
    @review.save
    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
