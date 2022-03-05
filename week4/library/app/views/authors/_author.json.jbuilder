json.extract! author, :id, :fname, :lname, :phone, :created_at, :updated_at
json.url author_url(author, format: :json)
