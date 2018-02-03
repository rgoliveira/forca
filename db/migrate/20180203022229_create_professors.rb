class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :email
      t.string :full_name
      t.string :display_name
      t.string :website
      t.string :avatar

      t.timestamps
    end
  end
end
