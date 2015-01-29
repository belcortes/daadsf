ActiveAdmin.register Email do
  # before_filter :skip_sidebar!
  permit_params :subject, :from, :text
  actions :all, :except => [:new]

  action_item only: :index do
    link_to 'Publish'
  end

  index do
    selectable_column
    column "Images" do |e|
      # e.member_images.each do |img|
      image_tag("https://s3-us-west-1.amazonaws.com/sfdaad-production/emails/items/000/000/0#{e.item.instance.id}/original/#{e.item_file_name}" )
      # end
    end
    column :from
  end

  batch_action :publish do |selection|
    Email.find(selection).each do |e|
      publish_images(e)
    end
    redirect_to :back
  end

  controller do
    def publish_images(image)
      @image = image
      respond_to do |format|
        format.json { render json: @image }
        format.html
      end
    end
  end

end