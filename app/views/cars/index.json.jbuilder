json.array!(@cars) do |car|
  json.extract! car, :id, :make, :model, :year, :color, :nickname, :license_plate_number, :longitude, :latitude, :user
  json.url car_url(car, format: :json)
end
