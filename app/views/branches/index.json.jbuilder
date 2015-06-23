json.array!(@branches) do |branch|
  json.extract! branch, :id, :city, :state, :postalCode, :colony, :street, :telephone, :email
  json.url branch_url(branch, format: :json)
end
