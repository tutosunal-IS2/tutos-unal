class CreateDia < ActiveRecord::Migration[5.0]
  def change
    create_table :dia do |t|
      t.date :hora_inicio
      t.date :hora_final

      t.timestamps
    end
  end
end
