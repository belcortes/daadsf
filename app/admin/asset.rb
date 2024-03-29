ActiveAdmin.register Incident, as: 'Asset' do
  # before_filter :skip_sidebar!
  permit_params :description, :latitude, :longitude, :address, :image, :tags, :categories, :admin_user_id => [], :leader_ids => []
  # belongs_to :admin_user
  scope :asset, :default => true do |r|
    r.where(:r_type => 'asset')
  end

  index do
    selectable_column
    # actions
    column "admin" do |a|
      a.admin_user.email
    end
    column :categories
    column :description
    column :latitude
    column :longitude
    column :address
    column "Images" do |e|
      image_tag("https://s3-us-west-1.amazonaws.com/sfdaad-production/emails/items/000/000/0#{e.image.instance.id}/original/#{e.image_file_name}" )
    end
    column :tags
  end

  form do |f|
    f.inputs "Add New Asset" do
      f.input :description
      # f.input :latitude
      # f.input :longitude
      f.input :address
      
      f.input :categories
      f.input :tags
      f.file_field :image
      # if f.object.persisted?
      #   #is shown when editing an existing object
      #   f.input :tags
      # end
    end
    f.actions do
      f.action :submit, label: 'Create Asset'
    end
    # f.actions
  end

  controller do
    def create
      @incident = Incident.new(permitted_params[:incident])
      @incident.admin_user = current_admin_user
      @incident.r_type = 'asset'
      if @incident.save
        redirect_to admin_assets_path
      else
        render new_admin_asset_path
      end
    end
  end


end