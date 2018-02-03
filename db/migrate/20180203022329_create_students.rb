class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :email
      t.string :full_name
      t.string :display_name

      t.timestamps
    end
  end
end
