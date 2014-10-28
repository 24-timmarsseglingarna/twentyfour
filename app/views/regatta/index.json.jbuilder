json.array!(@regatta) do |regattum|
  json.extract! regattum, :id, :name, :organizer_id, :description
  json.url regattum_url(regattum, format: :json)
end
