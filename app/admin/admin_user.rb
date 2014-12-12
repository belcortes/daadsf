ActiveAdmin.register AdminUser do
  # has_and_belongs_to_many :users
  permit_params :email, :password, :password_confirmation, :super, :user_ids => []

  menu :if => proc{ current_admin_user.super? }

  index do
    selectable_column
    id_column
    column :email
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :super
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email,                   :label => "Email Address"
      if f.object.id.nil?
        f.input :password,              :label => "Password"
        f.input :password_confirmation, :label => "Password Confirmation"
      end
      f.input :super
      f.input :users, :as => :check_boxes, :collection => User.all
    end
    f.actions
  end

  # controller do

  #   def create
  #     @admin = AdminUser.new
  #     p @admin
  #     # @admin = AdminUser.new(params[:admin_uer])
  #     @user = User.new(params[:email => @admin.email, :password => @admin.password, :password_confirmation => @admin.password_confirmation])
  #   end
  # end

  

  # collection_action :add_user, :method => :post do
  #   p :admin_user
  #   p 'PARAMS HERE ^^^^^^^^^^^^^^^^^^^^^^^'
  #   @user = User.new(params[:email => admin_user.email, :password => admin_user.password, :password_confirmation => admin_user.password])
  #   p @user
  # end
  # def create
  #   p :admin_user
  #   p 'PARAMS HERE ^^^^^^^^^^^^^^^^^^^^^^^'
  # end

end
