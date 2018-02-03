json.extract! evaluation, :id, :student_id, :professor_id, :course_id, :year, :semester, :grade, :comment, :professor_reply, :anonymous, :professor_reply_at, :created_at, :updated_at
json.url evaluation_url(evaluation, format: :json)
