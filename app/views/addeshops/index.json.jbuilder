json.array!(@addeshops) do |addeshop|
  json.extract! addeshop, :id, :eshopAddress
  json.url addeshop_url(addeshop, format: :json)
end
