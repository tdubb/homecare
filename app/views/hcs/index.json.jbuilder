json.array!(@hcs) do |hc|
  json.extract! hc, :id, :home, :contact, :about, :employment, :services, :why
  json.url hc_url(hc, format: :json)
end
