class Dog < ApplicationRecord
  belongs_to :user
  validates :title, :description, :age, :potty_trained, :likes_dogs, :likes_children, :state, :city, :name, presence: true
  has_one_attached :picture

end
