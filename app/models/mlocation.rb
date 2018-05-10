class Mlocation < ApplicationRecord
  has_many :mentries
  belongs_to :user

  validates :name, uniqueness: true
  validates_length_of :name, :maximum => 50, :allow_blank => false
end
