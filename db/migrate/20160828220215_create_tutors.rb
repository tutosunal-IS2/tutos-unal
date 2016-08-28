class CreateTutors < ActiveRecord::Migration[5.0]
  def change
    create_table :tutors do |t|
      t.string :nombre
      t.integer :ranking

      t.timestamps
    end
  end
end
