ActiveAdmin.register Email do
  # before_filter :skip_sidebar!
  permit_params :subject, :from, :text

   
  form do |f|
    f.inputs "Admin Details" do
      f.input :subject
      f.input :from
      f.input :text
    end
    f.actions
    p email.errors
  end

  index as: :grid do |e|
    link_to image_tag("https://s3-us-west-1.amazonaws.com/sfdaad-production/emails/items/000/000/0#{e.item.instance.id}/original/#{e.item_file_name}" )
  end

  # index do
  #   selectable_column
  #   column :from
  # end
end

# ActiveAdmin.register_page "Email" do

#   content do
#     form do |f|
#         f.label 'Enter your message here:'
#         f.input 
#         # f.input :users, :as => :check_boxes, :collection => User.all
#         User.all.each do |u|
#           # f.check_box
#           f.input u.email, :as => :check_box
#         end
#     end

#   end
# end