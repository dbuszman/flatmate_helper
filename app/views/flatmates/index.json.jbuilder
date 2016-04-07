json.array!(@flatmates) do |flatmate|
  json.extract! flatmate, :id, :firstname, :lastname, :image, :leaving_out, :ariiving, :duties, :charges
  json.url flatmate_url(flatmate, format: :json)
end
