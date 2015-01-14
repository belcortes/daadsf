class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.boolean :email
      t.boolean :mms
      t.integer :width
      t.integer :height
      t.decimal :lat
      t.decimal :lng
      t.datetime :date_time

      t.timestamps
    end
  end
end
