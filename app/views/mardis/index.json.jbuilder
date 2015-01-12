json.array!(@mardis) do |mardi|
  json.extract! mardi, :id
  json.url mardi_url(mardi, format: :json)
end
