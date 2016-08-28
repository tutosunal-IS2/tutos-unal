class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :contenido
      t.datetime :date
      t.integer :voto
      t.integer :Tutor_idTutor

      t.timestamps
    end
  end
end
