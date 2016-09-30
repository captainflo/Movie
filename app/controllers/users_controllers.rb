class UsersController < ApplicationController
  def create
    @user = User.create( user_params )
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params[:user].permit( user_params )
      redirect_to @post
    else
      render 'edit'
    end
  end
  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:user).permit(:avatar,:email)
  end

end
