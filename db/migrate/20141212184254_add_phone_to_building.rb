class AddPhoneToBuilding < ActiveRecord::Migration
  def change
    add_column :buildings, :phone_number, :string
    add_column :buildings, :notes, :string
    add_column :buildings, :city, :string
  end
end
