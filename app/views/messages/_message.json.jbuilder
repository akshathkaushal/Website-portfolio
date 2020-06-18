json.extract! message, :id, :email, :subject, :body, :created_at, :updated_at
json.url message_url(message, format: :json)
