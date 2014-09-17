class AddBlankToResources < ActiveRecord::Migration
  def change
    add_column :resources, :blank, :string
  end
end
