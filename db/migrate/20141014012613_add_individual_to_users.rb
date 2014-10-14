class AddIndividualToUsers < ActiveRecord::Migration
  def change
    add_column :users, :individual, :boolean
  end
end
