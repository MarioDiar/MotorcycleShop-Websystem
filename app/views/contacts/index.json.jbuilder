json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :lastname, :email, :telephone, :message
  json.url contact_url(contact, format: :json)
end
