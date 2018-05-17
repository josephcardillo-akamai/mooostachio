class User < ApplicationRecord
  after_create :create_accounts
  # after_create :create_types
  # after_create :create_statuses
  # after_create :create_categories

  has_many :mentries
  has_many :maccounts
  has_many :mcategories
  has_many :mlocations
  has_many :mtypes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def create_accounts
    self.maccounts.create(name:"Checking")
    self.maccounts.create(name:"Savings")
  end
end
