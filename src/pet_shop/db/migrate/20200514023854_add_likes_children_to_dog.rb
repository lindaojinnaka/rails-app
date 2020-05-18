class AddLikesChildrenToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :likes_children, :integer
  end
end
