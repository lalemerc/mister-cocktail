json.array!(@doses) do |dose|
  json.extract! dose, :id, :quantity, :cocktail_id, :ingredient_id
  json.url dose_url(dose, format: :json)
end
