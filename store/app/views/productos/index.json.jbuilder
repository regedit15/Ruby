json.array!(@productos) do |producto|
  json.extract! producto, :id, :titulo, :descripcion, :url_imagen, :precio
  json.url producto_url(producto, format: :json)
end
