json.extract! bb_client, :id, :avatar, :name, :email, :created_at, :updated_at
json.url bb_client_url(bb_client, format: :json)
