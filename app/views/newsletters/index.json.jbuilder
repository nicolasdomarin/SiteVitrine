json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :last_name, :first_name, :email
  json.url newsletter_url(newsletter, format: :json)
end
