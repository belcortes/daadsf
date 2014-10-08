class AddResiliencyToNeighborhoods < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :r_score, :integer
  end
end
