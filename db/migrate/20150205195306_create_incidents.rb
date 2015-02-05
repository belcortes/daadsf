class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :description
      t.decimal :lat
      t.decimal :lng
      t.string :address
      t.integer :admin_user_id
      t.integer :leader_id

      t.timestamps
    end
  end
end
