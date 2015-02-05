ActiveAdmin.register Incident do
  # before_filter :skip_sidebar!
  permit_params :description, :lat, :lng, :address, :image, :admin_user_ids => [], :leader_ids => []


  index do
    selectable_column
    # actions
    column :description
    column :lat
    column :lng
    column :address
    column "Images" do |e|
      image_tag("https://s3-us-west-1.amazonaws.com/sfdaad-production/emails/items/000/000/0#{e.image.instance.id}/original/#{e.image_file_name}" )
    end
  end

  form do |f|
    f.inputs "Add New Incident" do
      f.input :description
      f.input :lat
      f.input :lng
      f.input :address
      f.file_field :image
      # if f.object.persisted?
      #   #is shown when editing an existing object
      #   f.input :tags
      # end
    end
    f.actions
  end


end