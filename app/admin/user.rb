ActiveAdmin.register User do
  before_filter :left_sidebar!
  scope_to :current_admin_user, :unless => proc{ current_admin_user.super? }
  permit_params :email, :password, :password_confirmation, :phone, :name, :zip, :address, :nert, :cert, :cpr, :safe, :firstaid, :dumptruck, :backhoe, :forklift, :fuel, :generator, :saw, :jackhammer, :emergency, :drill, :hammer, :survival_kit, :shovel, :engineer, :contractor, :church, :school, :underground, :overnight, :oxygen, :wheelchair, :defibrillation, :other, :firstresponder, :inspector, :commercial, :electrician, :carpenter, :operator, :plumber, :kitchen, :bulldozer, :excavator, :frontloader, :reclaimer, :trencher, :tractor, :goggles, :axe, :backhoe_q, :bulldozer_q, :dumptruck_q, :excavator_q, :forklift_q, :frontloader_q, :jackhammer_q, :reclaimer_q, :tractor_q, :trencher_q, :axe_q, :drill_q, :fuel_q, :goggles_q, :hammer_q, :shovel_q, :defibrillation_q, :emergency_q, :oxygen_q, :wheelchair_q, :generator_q, :kitchen_q, :overnight_q, :underground_q, :flashlight_q, :individual, :business, :ngo, :gov, :faith, :closed, :open, :rescue, :flashlight, :license_number, :certification_number, :duns_number, :volunteer, :display, :emergency_contact, :latitude, :longitude, :license2_number, :certification2_number, :display2, :display3

  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :email, :label => "Email Address"
      if f.object.id.nil?
        f.input :password,            :label => "Password"
        f.input :password_confirmation, :label => "Password Confirmation"
      end
      f.input :display
      f.input :display2
      f.input :display3
      f.input :phone
      f.input :name
      f.input :zip
      f.input :address
      f.input :nert
      f.input :cert
      f.input :cpr
      f.input :safe
      f.input :firstaid
      f.input :dumptruck
      f.input :backhoe
      f.input :forklift
      f.input :fuel
      f.input :generator
      f.input :saw
      f.input :jackhammer
      f.input :emergency
      f.input :drill
      f.input :hammer
      f.input :survival_kit
      f.input :shovel
      f.input :emergency_contact
      f.input :engineer
      f.input :contractor
      f.input :church
      f.input :school
      f.input :underground
      f.input :overnight
      f.input :oxygen
      f.input :wheelchair
      f.input :defibrillation
      f.input :other
      f.input :latitude
      f.input :longitude
      f.input :firstresponder
      f.input :inspector
      f.input :commercial
      f.input :electrician
      f.input :carpenter
      f.input :operator
      f.input :plumber
      f.input :kitchen
      f.input :bulldozer
      f.input :excavator
      f.input :frontloader
      f.input :reclaimer
      f.input :trencher
      f.input :tractor
      f.input :goggles
      f.input :axe
      f.input :backhoe_q
      f.input :bulldozer_q
      f.input :dumptruck_q
      f.input :excavator_q
      f.input :forklift_q
      f.input :frontloader_q
      f.input :jackhammer_q
      f.input :reclaimer_q
      f.input :tractor_q
      f.input :trencher_q
      f.input :axe_q
      f.input :drill_q
      f.input :fuel_q
      f.input :goggles_q
      f.input :hammer_q
      f.input :shovel_q
      f.input :defibrillation_q
      f.input :emergency_q
      f.input :oxygen_q
      f.input :wheelchair_q
      f.input :generator_q
      f.input :kitchen_q
      f.input :overnight_q
      f.input :underground_q
      f.input :flashlight_q
      f.input :individual
      f.input :business
      f.input :ngo
      f.input :gov
      f.input :faith
      f.input :closed
      f.input :open
      f.input :rescue
      f.input :flashlight
      f.input :license_number
      f.input :license2_number
      f.input :certification_number
      f.input :certification2_number
      f.input :duns_number
      f.input :volunteer
    end
    f.actions
  end

  index do
    actions
    selectable_column
    column :email
    column :name
    column :display
    column :display2
    column :display3
    column :phone
    column :zip
    column :address
    column :nert
    column :cert
    column :cpr
    column :safe
    column 'First Aid', :firstaid
    column 'Dump Truck', :dumptruck
    column 'Dump Truck #', :dumptruck_q
    column :backhoe
    column 'Backhoe #', :backhoe_q
    column 'Fork Lift', :forklift
    column :fuel
    column :generator
    column :saw
    column :jackhammer
    column 'Emergency Kit', :emergency
    column :drill
    column :hammer
    column :survival_kit
    column :shovel
    column :engineer
    column :contractor
    column :church
    column :school
    column 'Ungerground Shelter', :underground
    column 'Overnight Shelter', :overnight
    column :oxygen
    column :wheelchair
    column :defibrillation
    column :other
    column :latitude
    column :longitude
    column 'First Responder', :firstresponder
    column :inspector
    column :commercial
    column :electrician
    column :carpenter
    column :operator
    column :plumber
    column :kitchen
    column :bulldozer
    column 'Bulldozer #', :bulldozer_q
    column :excavator
    column 'Front Loader', :frontloader
    column :reclaimer
    column 'Reclaimer #', :reclaimer_q
    column :trencher
    column 'Trencher #', :trencher_q
    column :tractor
    column 'Tractor #', :tractor_q
    column :goggles
    column 'Goggles #', :goggles_q
    column :axe
    column 'Axe #', :axe_q
    column 'Excavator #', :excavator_q
    column 'Fork Lift #', :forklift_q
    column 'Front Loader #', :frontloader_q
    column 'Jackhammer #', :jackhammer_q
    column 'Drill #', :drill_q
    column 'Fuel #', :fuel_q
    column 'Hammer #', :hammer_q
    column 'Shovel #', :shovel_q
    column 'Defibrillation #', :defibrillation_q
    column 'Emergency Kit #', :emergency_q
    column 'Oxygen #', :oxygen_q
    column 'Wheelchair #', :wheelchair_q
    column 'Generator #', :generator_q
    column 'Kitchen #', :kitchen_q
    column 'Overnight Shelter #', :overnight_q
    column 'Underground Shelter #', :underground_q
    column 'Flashlight #', :flashlight_q
    column :individual
    column :business
    column 'NGO', :ngo
    column 'Government Entity', :gov
    column 'Faith Based Organization', :faith
    column :closed
    column :open
    column :rescue
    column :flashlight
    column :license_number
    column :license2_number
    column :certification_number
    column :certification2_number
    column :duns_number
    column :volunteer
    
  end

  filter :display
  filter :email
  filter :phone
  filter :name
  filter :zip
  filter :address
  filter :nert
  filter :cert
  filter :cpr
  filter :safe
  filter :firstaid
  filter :dumptruck
  filter :backhoe
  filter :forklift
  filter :fuel
  filter :generator
  filter :saw
  filter :jackhammer
  filter :emergency
  filter :drill
  filter :hammer
  filter :survival_kit
  filter :shovel
  filter :engineer
  filter :contractor
  filter :church
  filter :school
  filter :underground
  filter :overnight
  filter :oxygen
  filter :wheelchair
  filter :defibrillation
  filter :other
  filter :firstresponder
  filter :inspector
  filter :commercial
  filter :electrician
  filter :carpenter
  filter :operator
  filter :plumber
  filter :kitchen
  filter :bulldozer
  filter :excavator
  filter :frontloader
  filter :reclaimer
  filter :trencher
  filter :tractor
  filter :goggles
  filter :axe
  filter :backhoe_q
  filter :bulldozer_q
  filter :dumptruck_q
  filter :excavator_q
  filter :forklift_q
  filter :frontloader_q
  filter :jackhammer_q
  filter :reclaimer_q
  filter :tractor_q
  filter :trencher_q
  filter :axe_q
  filter :drill_q
  filter :fuel_q
  filter :goggles_q
  filter :hammer_q
  filter :shovel_q
  filter :defibrillation_q
  filter :emergency_q
  filter :oxygen_q
  filter :wheelchair_q
  filter :generator_q
  filter :kitchen_q
  filter :overnight_q
  filter :underground_q
  filter :flashlight_q
  filter :individual
  filter :business
  filter :ngo
  filter :gov
  filter :faith
  filter :closed
  filter :open
  filter :rescue
  filter :flashlight
  filter :license_number
  filter :certification_number
  filter :duns_number
  filter :volunteer


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
