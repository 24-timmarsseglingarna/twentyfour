json.array!(@races) do |race|
  json.extract! race, :id, :period, :start_from, :start_to, :regattum_id
  json.url race_url(race, format: :json)
end
