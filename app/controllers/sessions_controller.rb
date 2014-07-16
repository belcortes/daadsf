class SessionsController < Devise::SessionsController

  # GET /resource/sign_in
  def create
    @users = User.all
  end

end