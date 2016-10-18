class UsersController < ApplicationController
  before_action :set_user, only: [:show, :received_reviews, :posted_reviews]
  
  def index
    @users = User.all
  end
  
  def show
  end
  
  def received_reviews
    @reviews = Review.where(reviewee_id: @user.id)
    render json: @reviews
  end
  
  def posted_reviews
    @reviews = Review.where(reviewer_id: @user.id)
    render json: @reviews
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
  
end
