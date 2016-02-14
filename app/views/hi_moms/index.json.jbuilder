json.array!(@hi_moms) do |hi_mom|
  json.extract! hi_mom, :id
  json.url hi_mom_url(hi_mom, format: :json)
end
