class AddCountToLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :count, :integer
  end
end
