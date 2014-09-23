class UsersController < ApplicationController

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      session[:modal] = true
      redirect_to root_path
    else
      render 'new'
    end
  end


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

  def resources
    @users = User.all
  end
  
end