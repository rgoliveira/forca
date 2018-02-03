class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.references :student, foreign_key: true
      t.references :professor, foreign_key: true
      t.references :course, foreign_key: true
      t.integer :year
      t.integer :semester
      t.string :grade
      t.text :comment
      t.text :professor_reply
      t.boolean :anonymous
      t.timestamp :professor_reply_at

      t.timestamps
    end
  end
end
