ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do


	# div class: "blank_slate_container", id: "dashboard_default_message" do
	#   span class: "blank_slate" do
	# 	span I18n.t("active_admin.dashboard_welcome.welcome")
	# 	small I18n.t("active_admin.dashboard_welcome.call_to_action")
	#   end
	# end

	# Here is an example of a simple dashboard with columns and panels.
	
	columns do
	  column do
	    panel "Recent Users" do
	      # ul do
        User.all.map do |post|
          li link_to(post.name, admin_admin_users_path)
        end
	      # end
	    end
	  end

	  column do
	    panel "Recent Incidents" do
	      ul do
	        Incident.where(r_type: 'incident').map do |post|
	          li link_to(post.description, admin_admin_users_path)
	        end
	      end
	    end
	    panel "Recent Assets" do
	      ul do
	        Incident.where(r_type: 'asset').map do |post|
	          li link_to(post.description, admin_admin_users_path)
	        end
	      end
	    end
	    panel "Recent Resources" do
	      ul do
	        Incident.where(r_type: 'resource').map do |post|
	          li link_to(post.description, admin_admin_users_path)
	        end
	      end
	    end
	  end
	  column do
	    panel "Recent Images" do
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

