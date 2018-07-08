json.bikes @rides do|ride|
  json.id ride.id
  json.start ride.start
  json.end ride.end
  json.start_latitude ride.start_latitude
  json.start_longitude ride.start_longitude
  json.end_latitude ride.end_latitude
  json.end_longitude ride.end_longitude
end
