class AddMedicalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :oxygen, :boolean
    add_column :users, :wheel_chair, :boolean
    add_column :users, :defibrillation, :boolean
  end
end
