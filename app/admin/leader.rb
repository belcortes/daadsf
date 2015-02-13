ActiveAdmin.register Leader do
  permit_params :email, :name, :password, :password_confirmation, :user_ids => []
  scope_to :current_admin_user, :unless => proc{ current_admin_user.super? }  
  menu :if => proc{ !current_admin_user.leader?}

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :sign_in_count
    column :created_at
    actions
    # end
  end

  filter :email
  filter :name
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Leader Details" do
      f.input :name
      f.input :email,                   :label => "Email Address"
      if f.object.id.nil?
        f.input :password,              :label => "Password"
        f.input :password_confirmation, :label => "Password Confirmation"
      end
      f.input :users, :as => :check_boxes, :collection => User.all
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :created_at
      row :updated_at

      row 'Users' do
        table_for leader.users do |t|
          t.column :name
          t.column :email
        end
      end
    end
  end

  controller do
    def create
      @leader = Leader.new(permitted_params[:leader])
      @user = User.create(email: @leader.email, password: @leader.password, password_confirmation: @leader.password_confirmation, name: @leader.name, leader: true)
      @admin = AdminUser.create(email: @leader.email, password: @leader.password, password_confirmation: @leader.password_confirmation, name: @leader.name, leader: true)
      @leader.admin_users << current_admin_user
      p @leader
      p @user
      p @admin
      p @leader.admin_users
      if @leader.save! && @user.save! && @admin.save!
        p 'we saved bitch!'
        redirect_to admin_leaders_path
      else
        p 'we no save'
        p errors
        render '/admin/leaders/new'
      end
    end
  end

end
