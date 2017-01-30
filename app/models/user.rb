class User < ApplicationRecord
  # Devise setup
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :pictures

  # Scopes
  scope :with_pictures, -> { User.joins(:pictures).distinct.all }
end
