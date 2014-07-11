class CreateZipcodes < ActiveRecord::Migration
  def change
    create_table :zipcodes do |t|
      t.string :city
      t.string :state
      t.string :zip_number
      t.timestamps
    end
  end
end
