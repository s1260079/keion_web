json.extract! user, :id, :username, :studentID, :string, :email, :crypted_password, :salt, :part, :likeBand, :message, :created_at, :updated_at
json.url user_url(user, format: :json)
