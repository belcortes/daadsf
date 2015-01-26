ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end

# ActiveAdmin.register Group, as: 'Group Leader' do
#   permit_params :email, :name, :admin_user_ids => []
#   # scope_to :current_admin_user, :if => proc{ current_admin_user.leader? }  
#   scope_to :current_admin_user, :unless => proc{ current_admin_user.super? }  
#   menu :if => proc{ !current_admin_user.leader?}

#   index do
#     # current_admin_user.groups.each do |g|
#     selectable_column
#     id_column
#     column :name
#     column :email
#     column :sign_in_count
#     column :created_at
#     actions
#     # end
#   end

#   filter :email
#   filter :name
#   filter :sign_in_count
#   filter :created_at

#   form do |f|
#     f.inputs "Admin Details" do
#       f.input :name
#       f.input :email,                   :label => "Email Address"
#       if f.object.id.nil?
#         f.input :password,              :label => "Password"
#         f.input :password_confirmation, :label => "Password Confirmation"
#       end
#       f.input :users, :as => :check_boxes, :collection => User.all
#     end
#     f.actions
#   end

# end
