class AddUserRefToEstudiantes < ActiveRecord::Migration[5.0]
  def change
    add_reference :estudiantes, :users, foreign_key: true
  end
end
