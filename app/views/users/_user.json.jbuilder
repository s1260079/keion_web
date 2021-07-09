json.extract! user, :id, :user_name, :student_id, :email, :crypted_password, :salt, :part, :like_band, :message, :created_at, :updated_at
json.url user_url(user, format: :json)
