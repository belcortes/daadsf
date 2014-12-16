ActiveAdmin.register AdminUser do
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

  controller do

    def create
      @admin = AdminUser.new(permitted_params[:admin_user])
      if @admin.save
        @user = User.new(permitted_params[email: @admin.email, password: @admin.password, password_confirmation: @admin.password_confirmation, admin: true])
        p @user
        p 'user params ^^^'
        p @admin
        p 'PARAMS HERE ^^^^^^^^^^^^^^^^^^^^^^^^^^'
        redirect_to admin_admin_users_path
      else
        render '/admin/admin_users/new'
      end
    end
  end

end
