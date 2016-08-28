class CreateTutoria < ActiveRecord::Migration[5.0]
  def change
    create_table :tutoria do |t|
      t.string :asignatura
      t.datetime :horario

      t.timestamps
    end
  end
end
