json.bikes @bikes do|bike|
  json.bike_code bike.bike_code
  json.status bike.status
  json.latitude bike.latitude
  json.longitude bike.longitude
  json.distance bike.distance.round(3)
end
