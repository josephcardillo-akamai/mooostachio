class User < ApplicationRecord
  after_create :create_accounts
  after_create :create_types
  after_create :create_statuses
  after_create :create_categories
  after_create :create_locations

  has_many :mentries
  has_many :maccounts
  has_many :mcategories
  has_many :mlocations
  has_many :mtypes
  has_many :mstatuses
  has_many :entries, through: :mentries, source: :user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def create_accounts
    self.maccounts.create(name:"Checking")
    self.maccounts.create(name:"Credit Card")
    self.maccounts.create(name:"Savings")
  end

  def create_categories
    self.mcategories.create(name:"N/A")
    self.mcategories.create(name:"Birthdays")
    self.mcategories.create(name:"Books")
    self.mcategories.create(name:"Car Insurance")
    self.mcategories.create(name:"Car Repair")
    self.mcategories.create(name:"Cash")
    self.mcategories.create(name:"Christmas")
    self.mcategories.create(name:"Clothing")
    self.mcategories.create(name:"Coffee")
    self.mcategories.create(name:"Education")
    self.mcategories.create(name:"Entertainment")
    self.mcategories.create(name:"Food")
    self.mcategories.create(name:"Garden")
    self.mcategories.create(name:"Giving")
    self.mcategories.create(name:"Health & Wellness")
    self.mcategories.create(name:"Hobbies")
    self.mcategories.create(name:"Home Repair")
    self.mcategories.create(name:"Household")
    self.mcategories.create(name:"Internet")
    self.mcategories.create(name:"Mortgage")
    self.mcategories.create(name:"Music")
    self.mcategories.create(name:"Out To Eat")
    self.mcategories.create(name:"Paycheck")
    self.mcategories.create(name:"Phone")
    self.mcategories.create(name:"Rent")
    self.mcategories.create(name:"Shoes")
    self.mcategories.create(name:"Subscriptions")
    self.mcategories.create(name:"Transportation")
    self.mcategories.create(name:"Utilities")
    self.mcategories.create(name:"Vacation")
  end

  def create_statuses
    self.mstatuses.create(name:"Open")
    self.mstatuses.create(name:"Pending")
    self.mstatuses.create(name:"Closed")
  end

  def create_types
    self.mtypes.create(name:"Debit")
    self.mtypes.create(name:"Transfer From")
    self.mtypes.create(name:"Transfer To")
    self.mtypes.create(name:"Withdrawal")
    self.mtypes.create(name:"Deposit")
    self.mtypes.create(name:"Refund")
    self.mtypes.create(name:"Payment")
    self.mtypes.create(name:"Check")
  end

  def create_locations
    self.mlocations.create(name:"N/A")
    self.mlocations.create(name:"Amazon")
    self.mlocations.create(name:"Auto Repair Shop")
    self.mlocations.create(name:"Bank")
    self.mlocations.create(name:"Clothing Store")
    self.mlocations.create(name:"Coffee Shop")
    self.mlocations.create(name:"Employer")
    self.mlocations.create(name:"Grocery Store")
    self.mlocations.create(name:"Gas Station")
    self.mlocations.create(name:"Hardware Store")
    self.mlocations.create(name:"Mortgage Company")
    self.mlocations.create(name:"Netflix")
    self.mlocations.create(name:"Public Transportation")
    self.mlocations.create(name:"Restaurant")
    self.mlocations.create(name:"Shoe Store")
    self.mlocations.create(name:"Uber")
    self.mlocations.create(name:"Utility Company")



  end
end
