class AddAverageRatingToUsers < ActiveRecord::Migration[7.0]

  def change
    add_column :users, :average_rating, :float, default: 0.0
  end
  
end
