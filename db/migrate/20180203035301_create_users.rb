class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.references :student, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
