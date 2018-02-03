json.extract! student, :id, :email, :full_name, :display_name, :created_at, :updated_at
json.url student_url(student, format: :json)
