json.array!(@garment_types) do |garment_type|
  json.extract! garment_type, :id, :name, :icon
  json.url garment_type_url(garment_type, format: :json)
end
