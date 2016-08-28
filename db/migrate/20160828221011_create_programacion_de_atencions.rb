class CreateProgramacionDeAtencions < ActiveRecord::Migration[5.0]
  def change
    create_table :programacion_de_atencions do |t|
      t.datetime :hora_inicio
      t.datetime :hora_final

      t.timestamps
    end
  end
end
