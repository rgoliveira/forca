class CreateEvaluationKarmas < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluation_karmas do |t|
      t.references :student, foreign_key: true
      t.references :evaluation, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
