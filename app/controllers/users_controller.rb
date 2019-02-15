class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user.travel_credits = 500
      return redirect_to '/users/new' unless @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up! All users get $500 upon signing up. Reach an admin to replenish funds."
      redirect_to "/users/#{@user.id}"
    else
      flash[:notice] = @user.errors.full_messages.join(". ")
      redirect_to new_user_path
    end

  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    return redirect_to edit_admin_user_path(@user) unless @user.save
    flash[:notice] = "Successfully updated."
    redirect_to admin_user_path(@user)
  end

  def review
    @user = User.find(params[:id])
  end

  def post_review
    @user = User.find(params[:id])
    trip = @user.trips.last
    trip.update(rating: user_params[:trip_rating])
    return redirect_to review_url(@user) unless trip.save
    flash[:notice] = "Review successfully posted."
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :travel_credits, :energy, :fun, :admin, :password, :password_confirmation, :trip_rating)
  end

  def require_login
    return redirect_to '/' unless session.include? :user_id
  end
end
