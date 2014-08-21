class RemoveGovEmployeeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :gov_employee, :boolean
  end
end
