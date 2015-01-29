# ActiveAdmin.register Email do
#   # before_filter :skip_sidebar!
#   permit_params :subject, :from, :text
#   actions :all, :except => [:new]

   

#   # index as: :grid, columns: 2 do |e|
#   #   image_tag("https://s3-us-west-1.amazonaws.com/sfdaad-production/emails/items/000/000/0#{e.item.instance.id}/original/#{e.item_file_name}" )
#   #   # resource_selection_cell e
#   # end

#   action_item only: :index do
#     link_to 'Publish'
#   end

#   index do
#     selectable_column
#     column "Images" do |e|
#       # e.member_images.each do |img|
#       image_tag("https://s3-us-west-1.amazonaws.com/sfdaad-production/emails/items/000/000/0#{e.item.instance.id}/original/#{e.item_file_name}" )
#       # end
#     end
#     column :from
#   end
# end

# # ActiveAdmin.register_page "Email" do

# #   content do
# #     form do |f|
# #         f.label 'Enter your message here:'
# #         f.input 
# #         # f.input :users, :as => :check_boxes, :collection => User.all
# #         User.all.each do |u|
# #           # f.check_box
# #           f.input u.email, :as => :check_box
# #         end
# #     end

# #   end
# # end