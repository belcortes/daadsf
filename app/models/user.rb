class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :validatable
  has_and_belongs_to_many :neighborhoods
  has_one :zipcode

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable, :omniauth_providers => [:facebook]

  searchable do
    text :zip, :name, :email, :other
    boolean :nert
    boolean :cert
    boolean :cpr
    boolean :safe
    boolean :first_aid
    boolean :dump_truck
    boolean :back_hoe
    boolean :crane
    boolean :fork_lift
    boolean :truck
    boolean :fuel
    boolean :air_compressor
    boolean :power_generator
    boolean :bus
    boolean :saw
    boolean :lathe
    boolean :plow
    boolean :jack_hammer
    boolean :emergency_kit
    boolean :drill
    boolean :hammer
    boolean :survival_kit
    boolean :shovel
  end


  # def facebook
  #   # You need to implement the method below in your model (e.g. app/models/user.rb)
  #   @user = User.from_omniauth(request.env["omniauth.auth"])

  #   if @user.persisted?
  #     sign_in_and_redirect @user
   #    :event => :authentication #this will throw if @user is not activated
  #     set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
  #   else
  #     session["devise.facebook_data"] = request.env["omniauth.auth"]
  #     redirect_to new_user_registration_url
  #   end
  # end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def update_with_password(params={})
    current_password = params.delete(:current_password)

    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation) if params[:password_confirmation].blank?
    end 

    result = params[:password].blank? && if params[:password].blank? || valid_password?(current_password)
      update_attributes(params)
    else
      self.attributes = params
      self.valid?
      self.errors.add(:current_password, current_password.blank? ? :blank : :invalid)
      false
    end 

    clean_up_passwords
    result
  end
   searchable do
    string :name
    # text :address
    # integer :zip
  end

end
