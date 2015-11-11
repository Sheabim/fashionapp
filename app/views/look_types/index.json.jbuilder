json.array!(@look_types) do |look_type|
  json.extract! look_type, :id, :name
  json.url look_type_url(look_type, format: :json)
end
