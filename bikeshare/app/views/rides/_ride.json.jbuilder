json.extract! ride, :id, :start, :end, :start_latitude, :start_longitude, :end_latitude, :end_longitude, :initial_cost, :minute_cost, :created_at, :updated_at
json.url ride_url(ride, format: :json)
