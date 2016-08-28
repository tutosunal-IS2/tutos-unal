class CreateEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :plan_de_estudios
      t.integer :semestre
      t.boolean :bloqueo

      t.timestamps
    end
  end
end
