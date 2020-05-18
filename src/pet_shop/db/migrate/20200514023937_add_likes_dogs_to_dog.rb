class AddLikesDogsToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :likes_dogs, :integer
  end
end
