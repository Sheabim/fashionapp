json.array!(@looks) do |look|
  json.extract! look, :id, :name, :user_id
  json.url look_url(look, format: :json)
end
