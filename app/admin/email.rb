ActiveAdmin.register Email, as: 'Images' do
  # before_filter :skip_sidebar!
  permit_params :subject, :from, :text
  actions :all, :except => [:new]

  action_item only: :index do
    link_to 'Publish'
  end

  index do
    selectable_column
    column "Images" do |e|
      image_tag("https://s3-us-west-1.amazonaws.com/sfdaad-production/emails/items/000/000/0#{e.item.instance.id}/original/#{e.item_file_name}" )
    end
    column :from
  end

  batch_action :publish do |selection|
    Email.find(selection).each do |e|
      p e.item.path
      e.update_attributes(published: true)
    end
    redirect_to :back
  end

  controller do
    def publish_images(image)
      @image = image
      p @image
      respond_to do |format|
        format.json { render json: @image }
        # format.html
      end
    end
  end

end