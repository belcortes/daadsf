# ActiveAdmin.register User, :as => 'Email User' do
#   before_filter :skip_sidebar!
#   menu :label => "Email"

#   # content do
   

#   form do |f|
#       f.label 'Enter your message here:'
#       f.input :name
#   end

    


#   # end

#   index do
#     selectable_column
#     column :email
#     column :name
#     column :phone
#     column :zip
#     column :address
#   end

#   # controller do
#   #   def scoped_collection
#   #     User.where(:waitlist => true)
#   #   end
#   # end

#   # # code

#   # scope :all
#   # scope :journalists
#   # scope :startup_employees
# end

ActiveAdmin.register_page "Email" do
  
  # scope_to :current_admin_user, :if => proc{ admin_user_signed_in? }
  # scope_to :if => proc{ admin_user_signed_in? } do
  #   User.all
  # end

  content do
    # scope_to :current_admin_user
    form do |f|
        f.label 'Enter your message here:'
        f.input :name => :user
        # f.input :users, :as => :check_boxes, :collection => User.all
        User.all.each do |u|
          # f.check_box
          f.input u.email, :as => :check_box
        end
    end

    # index do
    #   User.all.each do |u|
    #     u.email
    #   end
    # end

    


  end
end