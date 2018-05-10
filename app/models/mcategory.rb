class Mcategory < ApplicationRecord
  has_many :mentries
  belongs_to :user
end
