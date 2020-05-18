class Dog < ApplicationRecord
  belongs_to :user
  validates :title, :description, :age, :state, :city, :name, presence: true
  has_one_attached :picture
  # enum potty_trained: { yes_potty_trained: 0, no_potty_trained: 1 }
  # enum likes_children: { yes_likes_children: 0, no_likes_children: 1 }
  # enum likes_dogs: { yes_dogs: 0, no_dogs: 1 }


end
