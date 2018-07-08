json.extract! bike, :id, :bike_code, :status, :latitude, :longitude, :created_at, :updated_at
json.url bike_url(bike, format: :json)
