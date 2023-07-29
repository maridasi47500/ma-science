json.extract! weather, :id, :name, :image, :created_at, :updated_at
json.url weather_url(weather, format: :json)
