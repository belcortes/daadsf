ActiveAdmin.register Email, as: 'Images' do
  # before_filter :skip_sidebar!
  menu priority: 1
  permit_params :subject, :from, :text
  actions :all, :except => [:new]

  # action_item only: :index do
  #   link_to 'Publish'
  # end
  filter :from
  filter :item_file_name
  filter :published
  filter :created_at


  index do
    selectable_column
    column :published
    column "Images" do |e|
      image_tag("https://s3-us-west-1.amazonaws.com/sfdaad-production/emails/items/000/000/0#{e.item.instance.id}/original/#{e.item_file_name}" )
    end
    column :from
    column :subject
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