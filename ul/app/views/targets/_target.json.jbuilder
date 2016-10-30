json.extract! target, :id, :name, :team, :type, :description, :created_at, :updated_at
json.url target_url(target, format: :json)