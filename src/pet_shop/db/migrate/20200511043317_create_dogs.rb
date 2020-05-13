class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :description
      t.integer :age
      t.boolean :potty_trained
      t.boolean :likes_dogs
      t.boolean :likes_children
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
