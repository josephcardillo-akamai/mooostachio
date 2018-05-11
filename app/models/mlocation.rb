class Mlocation < ApplicationRecord
  has_many :mentries
  belongs_to :user

  before_save :downcase_fields
  before_save validates :name, uniqueness: true
  validates_length_of :name, :maximum => 50, :allow_blank => false

  def downcase_fields
    self.name.downcase!
  end
end
