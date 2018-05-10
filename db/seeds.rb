# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user_list = [
  ["blue@gmail.com", "111111"]
]

user_list.each do |email, password|
  User.create(email: email, password: password)
end

maccount_list = [
  ["Checking", 1],
  ["Savings", 1]
]

maccount_list.each do |name, user_id|
  Maccount.create(name: name, user_id: user_id)
end

mcategory_list = [
  ["Food", 1],
  ["Household", 1],
  ["Transportation", 1],
  ["Mortgage", 1],
  ["Clothing", 1],
  ["Entertainment", 1]
]

mcategory_list.each do |name, user_id|
  Mcategory.create(name: name, user_id: user_id)
end

mlocation_list = [
  ["Trader Joe's", 1],
  ["Shell Collingswood", 1],
  ["PATCO", 1],
  ["JPMorgan", 1],
  ["Thrift Store", 1],
  ["South Philly Taproom", 1]
]

mlocation_list.each do |name, user_id|
  Mlocation.create(name: name, user_id: user_id)
end

mtype_list = [
  ["Debit", 1],
  ["Credit", 1],
  ["Transfer", 1],
  ["Withdrawal", 1],
  ["Deposit", 1],
  ["Refund", 1]
]

mtype_list.each do |name, user_id|
  Mtype.create(name: name, user_id: user_id)
end

mstatus_list = [
  ["Open", 1],
  ["Pending", 1],
  ["Closed", 1]
]

mstatus_list.each do |name, user_id|
  Mstatus.create(name: name, user_id: user_id)
end


mentry_list = [
  [100.02, 1, DateTime.now, 1, 1, 1, 1, 1],
  [25.85, 3, DateTime.now + 7.days, 2, 1, 5, 5, 1]
]

mentry_list.each do |amt, sta, date, typ, act, loc, cat, uid|
  Mentry.create(amount: amt, mstatus_id: sta, date: date, mtype_id: typ, maccount_id: act, mlocation_id: loc, mcategory_id: cat, user_id: uid)
end
