class User < ApplicationRecord
  has_one :rating
  has_many :skills

  validates :name, presence: true
end
