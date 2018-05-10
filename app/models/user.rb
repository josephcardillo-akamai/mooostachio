class User < ApplicationRecord
  has_many :mentries
  has_many :maccounts
  has_many :mcategories
  has_many :mlocations
  has_many :mtypes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
