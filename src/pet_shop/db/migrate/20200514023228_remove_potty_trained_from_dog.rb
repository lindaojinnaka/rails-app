class RemovePottyTrainedFromDog < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :potty_trained, :boolean
  end
end
