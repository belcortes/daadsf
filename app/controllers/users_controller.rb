class UsersController < ApplicationController


  def show
    @users = User.all
    respond_to do |format|
      format.json { render json: @users }
    end
  end


  def update
    @user = current_user
    if @user.update_attributes(user_params)
      render :partial => 'users/personal'
    else
      render 'home/edit'
    end
  end
  
end