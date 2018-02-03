json.extract! professor, :id, :email, :full_name, :display_name, :website, :avatar, :created_at, :updated_at
json.url professor_url(professor, format: :json)
