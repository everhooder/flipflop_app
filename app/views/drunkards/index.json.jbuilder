json.array!(@drunkards) do |drunkard|
  json.extract! drunkard, :name, :surname, :birthday, :email, :comment
  json.url drunkard_url(drunkard, format: :json)
end
