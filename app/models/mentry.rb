class Mentry < ApplicationRecord
  belongs_to :user
  belongs_to :maccount
  belongs_to :mcategory
  belongs_to :mlocation
  belongs_to :mtype
  belongs_to :mstatus

  validates :amount, numericality: true

end
