class ReviewsController < ApplicationController
  before_action :only => [:destroy] do
  redirect_to new_user_session_path unless current_user && current_user.admin
 end


  def new
    @service = Service.find(params[:service_id])
    @review = Review.new
  end

  def create
    @service = Service.find(params[:service_id])
    @review = @service.reviews.new(review_params)
    if @review.save
    flash[:notice] = "Review successfully added!"
      redirect_to request.env['HTTP_REFERER']
    else
      render :new
    end
  end


  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      flash[:notice] = "Review successfully removed!"
      redirect_to request.env['HTTP_REFERER']
    end
  end

private
  def review_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:review).permit(:author, :body)
  end
end
