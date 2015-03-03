class UsersController < ApplicationController
  # layout "form", :only => [:form]
  layout "residential", :only => [:residential]

  def print
    @user = User.where(zip: params[:zip])
    p @user
    respond_to do |format|
      format.html { render :layout => false, :only => [:print] }
      format.csv {render text: @user.as_csv}
      format.xls
    end
  end

  # def index
  #   @user = User.order(:name)
  #   respond_to do |format|
  #     format.html
  #     format.csv {render text: @user.as_csv}
  #   end
  # end

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
      format.html
      # format.csv {render text: @users.as_csv}
      # format.xls {render text: @users.as_csv(col_sep: '\t')}
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

  def form
    respond_to do |format|
      format.html { render :layout => 'form', :only => [:form] }
      # format.csv {render text: @user.as_csv}
      # format.xls
    end
  end
  def residential
  end
  def business
    respond_to do |format|
      format.html { render :layout => 'business', :only => [:business] }
      # format.csv {render text: @user.as_csv}
      # format.xls
    end
  end
  # def process
  #   CSV.open "form.csv", "a+" do |csv|
  #     csv << [params[:status],params[:first_name],params[:last_name],params[:phone_number],params[:email],params[:address],params[:city],params[:state],params[:zip]]
  #   end
  #   # logger.debug params.inspect
  #   # render :user => 'form'
  # end
  
end