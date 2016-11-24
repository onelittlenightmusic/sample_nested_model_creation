json.extract! child, :id, :name, :parent_id, :created_at, :updated_at
json.url child_url(child, format: :json)