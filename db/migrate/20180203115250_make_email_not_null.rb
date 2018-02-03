class MakeEmailNotNullStudent < ActiveRecord::Migration[5.1]
  def change
    change_column_null :users, :email, false
    change_column_null :professors, :email, false
  end
end
