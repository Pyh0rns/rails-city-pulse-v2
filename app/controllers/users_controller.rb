class UsersController < ApplicationController

  def update
    # @user = User.find(params[:id])
    @user = current_user
    @user.update(user_params)
    redirect_to pages_profile_path(@user)
    # pas sur du path
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
