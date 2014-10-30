json.array!(@boats) do |boat|
  json.extract! boat, :id, :name, :boat_type, :sail_number
  json.url boat_url(boat, format: :json)
end
