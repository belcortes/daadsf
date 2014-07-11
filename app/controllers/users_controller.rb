class UsersController < ApplicationController

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      redirect_to root
    else
      render 'home/edit'
    end
  end
  
end