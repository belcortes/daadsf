ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :super, :leader, :leader_ids => [], :user_ids => []

  menu :if => proc{ current_admin_user.super? }

  index do
    p current_admin_user
    p 'check me out ^^'
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
      f.input :leader
      f.input :leaders, :as => :check_boxes, :collection => Leader.all
      f.input :users, :as => :check_boxes, :collection => User.all
    end
    f.actions
  end

  # controller do

  #   def create
  #     @admin = AdminUser.new(permitted_params[:admin_user])
  #     if @admin.save
  #       @user = User.new(user_params[])
  #       p @user
  #       p 'user params ^^^'
  #       redirect_to admin_admin_users_path
  #     else
  #       render '/admin/admin_users/new'
  #     end
  #   end
  #   private
  #   def user_params
  #     params.require(:user).permit(
  #       :user_id, :email, :password, :password_confirmation, :admin
  #     )
  #   end
  # end

end
