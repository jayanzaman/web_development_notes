json.extract! create_rock, :id, :name, :description, :image, :created_at, :updated_at
json.url create_rock_url(create_rock, format: :json)