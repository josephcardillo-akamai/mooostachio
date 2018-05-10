json.extract! mentry, :id, :amount, :date, :note, :created_at, :updated_at
json.url mentry_url(mentry, format: :json)
