ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do


	# div class: "blank_slate_container", id: "dashboard_default_message" do
	#   span class: "blank_slate" do
	# 	span I18n.t("active_admin.dashboard_welcome.welcome")
	# 	small I18n.t("active_admin.dashboard_welcome.call_to_action")
	#   end
	# end
	
	columns do
	  column do
	    panel link_to "Recent Users", admin_users_path do
	      # ul do
        User.limit(20).order('id desc').map do |post|
          li link_to(post.name, admin_user_path(post.id))
        end
	      # end
	    end
	  end

	  column do
	    panel link_to "Recent Incidents", admin_incidents_path do
	      ul do
	        Incident.where(r_type: 'incident').limit(5).order('id desc').map do |post|
	          li link_to(post.description, admin_incident_path(post.id))
	        end
	      end
	    end
	    panel link_to "Recent Assets", admin_assets_path do
	      ul do
	        Incident.where(r_type: 'asset').limit(5).order('id desc').map do |post|
	          li link_to(post.description, admin_asset_path(post.id))
	        end
	      end
	    end
	    panel link_to "Recent Resources", admin_resources_path do
	      ul do
	        Incident.where(r_type: 'resource').limit(5).order('id desc').map do |post|
	          li link_to(post.description, admin_resource_path(post.id))
	        end
	      end
	    end
	  end
	  column do
	    panel link_to "Recent Images", admin_images_path do
	      # ul do
        Email.all.map do |post|
          li image_tag("https://s3-us-west-1.amazonaws.com/sfdaad-production/emails/items/000/000/0#{post.item.instance.id}/original/#{post.item_file_name}" )
        end
	      # end
	    end
	  end
	end
	
  end # content
end

