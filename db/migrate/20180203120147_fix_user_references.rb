class FixUserReferences < ActiveRecord::Migration[5.1]
  def change
    change_column_null :users, :student_id, true
    change_column_null :users, :professor_id, true
  end
end
