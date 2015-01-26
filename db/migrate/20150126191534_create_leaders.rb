class CreateLeaders < ActiveRecord::Migration
  def change
    create_table :leaders do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
