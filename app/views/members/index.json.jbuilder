json.array!(@members) do |member|
  json.extract! member, :id, :crew_id, :person_id, :captain
  json.url member_url(member, format: :json)
end
