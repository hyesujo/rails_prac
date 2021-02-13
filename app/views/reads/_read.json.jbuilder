json.extract! read, :id, :user_id, :title, :content, :published_at, :created_at, :updated_at
json.url read_url(read, format: :json)
