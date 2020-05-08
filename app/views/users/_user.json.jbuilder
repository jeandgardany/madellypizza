json.extract! user, :id, :name, :role, :status, :obs, :created_at, :updated_at
json.url user_url(user, format: :json)
