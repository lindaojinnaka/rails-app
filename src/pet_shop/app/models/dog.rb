class Dog < ApplicationRecord
  belongs_to :user
  validates :title, :description, :age, :name, :breed, presence: true
  has_one_attached :picture


end
