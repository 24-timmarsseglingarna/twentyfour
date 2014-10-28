json.array!(@points) do |point|
  json.extract! point, :id, :number, :name
  json.url point_url(point, format: :json)
end
