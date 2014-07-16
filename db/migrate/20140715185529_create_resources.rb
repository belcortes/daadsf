class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :street_number
      t.string :street_name
      t.string :street_type
      t.string :station_type
      t.decimal :lat
      t.decimal :lng
      t.integer :zipcode_id

      t.timestamps
    end
  end
end
