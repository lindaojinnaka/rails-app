class RemoveLikesChildrenFromDog < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :likes_children, :boolean
  end
end
