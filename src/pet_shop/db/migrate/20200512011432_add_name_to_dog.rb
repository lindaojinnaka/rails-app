class AddNameToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :name, :string
  end
end
