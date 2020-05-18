class RemoveLikesDogsFromDog < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :likes_dogs, :boolean
  end
end
