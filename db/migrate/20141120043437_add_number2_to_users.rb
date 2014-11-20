class AddNumber2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :certification2_number, :integer
    add_column :users, :license2_number, :integer
  end
end
