class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])
    @current_user = current_user
    @current_user.update(user_params)
    redirect_to pages_profile_path(@current_user)
    # pas sur du path...
  end

  private

  def user_params
    params.require(:user).permit(:photo, :bio)
  end
end
