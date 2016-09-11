class AddUserRefToTutors < ActiveRecord::Migration[5.0]
  def change
    add_reference :tutors, :users, foreign_key: true
  end
end
