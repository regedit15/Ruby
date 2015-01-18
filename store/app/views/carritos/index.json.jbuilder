json.array!(@carritos) do |carrito|
  json.extract! carrito, :id
  json.url carrito_url(carrito, format: :json)
end
