ActiveAdmin.register Email, as: 'Images' do
  # before_filter :skip_sidebar!
  menu priority: 1
  permit_params :subject, :from, :text, :tags
  actions :all, :except => [:new, :destroy, :show]
  # action_item :edit, only: :index, label: 'Add Tags'

  # config.action_items[1] = ActiveAdmin::ActionItem.new only: :index do
  #   link_to "Add Tags", edit_admin_image_path(:id)
  # end
  

  # action_item only: :index do
  #   link_to 'Publish'
  # end
  filter :tags
  filter :from
  filter :address
  filter :item_file_name
  filter :published
  filter :created_at



  index do
    selectable_column
    # actions
    actions defaults: false do |post|
      link_to 'Add Tags', edit_admin_image_path(:id)
    end
    column :published
    column "Images" do |e|
      image_tag("https://s3-us-west-1.amazonaws.com/sfdaad-production/emails/items/000/000/0#{e.item.instance.id}/original/#{e.item_file_name}" )
    end
    column :tags
    column :address
    column :from
    column :subject
  end

  form do |f|
    f.inputs "Add Tags to This Image" do
      if f.object.persisted?
        #is shown when editing an existing object
        f.input :tags
      end
    end
    f.actions
  end

  batch_action :publish do |selection|
    Email.find(selection).each do |e|
      p e.item.path
      e.update_attributes(published: true)
    end
    redirect_to :back
  end

  batch_action :unpublish do |selection|
    Email.find(selection).each do |e|
      p e.item.path
      e.update_attributes(published: false)
    end
    redirect_to :back
  end


end