json.extract! todo, :id, :name, :sequence, :created_at, :updated_at
json.url todo_url(todo, format: :json)
