json.array!(@garments) do |garment|
  json.extract! garment, :id, :wardrobe_id, :garment_type_id, :photo
  json.url garment_url(garment, format: :json)
end
