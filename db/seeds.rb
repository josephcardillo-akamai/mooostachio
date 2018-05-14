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
  ["Savings", 1],
  ["Credit Card", 1]
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
  ["Entertainment", 1],
  ["Utilities", 1],
  ["Gift", 1],
  ["Subscription", 1],
  ["Hobbies", 1],
  ["Out To Eat", 1],
  ["Garden", 1],
  ["Car Repair", 1],
  ["Education", 1],
  ["Cash", 1],
  ["Health & Wellness", 1],
  ["Tax Refund", 1],
  ["Internet", 1],
  ["Paycheck", 1],
  ["Books", 1],
  ["Home Repair", 1],
  ["Coffee", 1],
  ["Christmas", 1],
  ["Phone", 1],
  ["Car Insurance", 1],
  ["Misc.", 1],
  ["Emergency Fund", 1],
  ["Vacation", 1],
  ["Shoes", 1]
]

mcategory_list.each do |name, user_id|
  Mcategory.create(name: name, user_id: user_id)
end

mlocation_list = [
  ["Trader Joe's", 1],
  ["Whole Foods", 1],
  ["Gulf", 1],
  ["PATCO", 1],
  ["Chase", 1],
  ["Thrift Store", 1],
  ["Camden County MUA", 1],
  ["Haddon Township", 1],
  ["TD Bank", 1],
  ["Spotify", 1],
  ["Home Depot", 1],
  ["domain.com", 1],
  ["amazon.com", 1],
  ["Mom's Organic", 1],
  ["H-Mart", 1],
  ["Matthey Automotive", 1],
  ["NAPA", 1],
  ["Staples", 1],
  ["medium.com", 1],
  ["Udemy", 1],
  ["Wawa", 1],
  ["Cafe Urba", 1],
  ["Barcelona", 1],
  ["Conscious Clothing", 1],
  ["City Kids Consignment", 1],
  ["EZ Pass", 1],
  ["GEICO", 1],
  ["Unshoes", 1],
  ["Verizon", 1],
  ["vitacost.com", 1],
  ["Ticket Leap", 1],
  ["PSE&G", 1],
  ["SEPTA", 1],
  ["Uber", 1],
  ["La Colombe", 1],
  ["Joseph Fox Book Shop", 1],
  ["GAP", 1],
  ["Ace Hardware", 1],
  ["Jo-Ann Fabrics", 1],
  ["UPS", 1],
  ["Jiffy Lube", 1]
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
  ["Refund", 1],
  ["Payment", 1],
  ["Return", 1],
  ["Check", 1]
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
  # amount, status, date, type(debit, credit), account, location, category, uid
  # TJs / Food
  [-130.00, 3, DateTime.now - 30.days, 1, 1, 1, 1, 1],
  # PSEG / Utilities
  [-150.00, 3, DateTime.now - 29.days, 1, 1, 32, 7, 1],
  # CCMUA / Utilities
  [-66.00, 3, DateTime.now - 28.days, 2, 3, 7, 7, 1],
  # Spotify / subscription
  [-10.00, 3, DateTime.now - 27.days, 5, 1, 10, 9, 1],
  # UPS / paycheck
  [1000.00, 3, DateTime.now - 13.days, 1, 1, 40, 19, 1],
  # Home Depot / household
  [-50.00, 1, DateTime.now - 6.days, 1, 1, 11, 2, 1],
  # Mom's Organic
  [-120.00, 1, DateTime.now - 5.days, 1, 1, 14, 1, 1],
  # Thrift Store / Clothing
  [-25.00, 2, DateTime.now - 4.days, 1, 1, 6, 5, 1]
]

mentry_list.each do |amt, sta, date, typ, act, loc, cat, uid|
  Mentry.create(amount: amt, mstatus_id: sta, date: date, mtype_id: typ, maccount_id: act, mlocation_id: loc, mcategory_id: cat, user_id: uid)
end
