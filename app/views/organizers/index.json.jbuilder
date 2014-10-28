json.array!(@organizers) do |organizer|
  json.extract! organizer, :id, :name, :contact_name
  json.url organizer_url(organizer, format: :json)
end
