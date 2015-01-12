json.array!(@contacts) do |contact|
  json.extract! contact, :id, :fname, :lname, :comment, :address, :address2, :city, :state, :zip
  json.url contact_url(contact, format: :json)
end
