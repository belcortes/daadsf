class CreateCoolingCenters < ActiveRecord::Migration
  def change
    create_table :cooling_centers do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.string :phone
      t.string :center_type
      t.decimal :latitude, :precision => 15, :scale => 12
      t.decimal :longitude, :precision => 15, :scale => 12
      t.string :accessibility
      t.integer :zip

      t.timestamps
    end
  end
end
